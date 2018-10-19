package models

import (
	"bytes"
	"fmt"
	"os"
	"strings"

	"github.com/astaxie/beego"
	"github.com/go-sql-driver/mysql"
	"github.com/jinzhu/gorm"
)

// comments
var DB *gorm.DB

var err error

func LoadGoLibDB(db *gorm.DB) {

	DB = db
	println("Starting automigrate...")

	println("...Automigrate User...")
	DB.AutoMigrate(&User{})
	println("Success!")

}

func CreateGoLibDB() *gorm.DB {
	var mysqlConnect bytes.Buffer

	mysqluser := beego.AppConfig.String("mysqluser")
	fmt.Println("mysqluser:" + mysqluser)
	mysqlConnect.WriteString(mysqluser)

	mysqlConnect.WriteString(":")

	var mysqlpass string
	mysqlpass = os.Getenv("MYSQL_PASS")
	if mysqlpass == "" {
		mysqlpass = beego.AppConfig.String("mysqlpass")
	}
	mysqlConnect.WriteString(mysqlpass)

	mysqlConnect.WriteString("@tcp(")

	mysqlhost := os.Getenv("MYSQL_HOST")
	if mysqlhost == "" {
		mysqlhost = beego.AppConfig.String("mysqlhost")
	}
	fmt.Println("mysqlhost:" + mysqlhost)

	mysqlConnect.WriteString(mysqlhost)

	mysqlport := beego.AppConfig.String("mysqlport")
	if mysqlport == "" {
		mysqlport = "3306"
	}
	fmt.Println("mysqlport:" + mysqlport)
	mysqlConnect.WriteString(":" + mysqlport + ")/")

	mysqldb := beego.AppConfig.String("mysqldb")
	fmt.Println("mysqldb:" + mysqldb)

	mysqlConnect.WriteString(mysqldb)
	mysqlConnect.WriteString("?charset=utf8&parseTime=True&loc=Local")

	var db *gorm.DB
	db, err = gorm.Open("mysql", mysqlConnect.String())

	if err != nil {
		fmt.Println("Failed to connect database " + err.Error())

		fmt.Println("Trying to create a database: " + mysqldb)

		if mErr, ok := err.(*mysql.MySQLError); ok && mErr.Number == 1049 {
			err = create(mysqluser, mysqlpass, mysqlhost, mysqlport, mysqldb)
			if err == nil {
				db, err = gorm.Open("mysql", mysqlConnect.String())
				if err != nil {
					panic(err)
				}
			}
		}
	}

	LoadGoLibDB(db)

	return db
}

func create(mysqluser, mysqlpass, mysqlhost, mysqlport, mysqldb string) error {
	var err error

	var mysqlConnect []string

	mysqlConnect = append(mysqlConnect, mysqluser, ":", mysqlpass)
	mysqlConnect = append(mysqlConnect, "@tcp(", mysqlhost, ":", mysqlport, ")/?charset=utf8&parseTime=True&loc=Local")

	db, err := gorm.Open("mysql", strings.Join(mysqlConnect, ""))

	if err == nil {
		fmt.Println("CREATE DATABASE " + mysqldb)
		err = db.Exec("CREATE DATABASE " + mysqldb).Error
	}

	return err

}
