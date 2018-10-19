package models

import (
	"errors"

	gormTools "github.com/jinzhu/gorm"
	"golang.org/x/crypto/bcrypt"
)

type User struct {
	gormTools.Model `valid:"-"`
	Username        string `valid:"-"`
	Name            string `valid:"-"`
	Password        string `valid:"-"`
	Email           string `valid:"-"`
}

type RestaurantUser struct {
	gormTools.Model `valid:"-"`
	RestaurantID    int    `gorm:"unique"`
	Password        string `valid:"-"`
}

func RestaurantLogin(id int, password string) (uint, error) {
	var r RestaurantUser
	DB.Where("restaurant_id = ?", id).First(&r)
	if r.RestaurantID == 0 {
		return 0, errors.New("Invalid data")
	} else {
		if checkPassword(password, r.Password) {
			return 0, errors.New("Invalid data")
		}
	}
	return r.ID, nil
}

func Login(user string, password string) (uint, error) {
	var u User
	DB.Where("username = ?", user).First(&u)
	if u.Username == "" {
		return 0, errors.New("Invalid data")
	} else {
		if checkPassword(password, u.Password) {
			return 0, errors.New("Invalid data")
		}
	}
	return u.ID, nil
}

//func ChangePassword() {
//}

func cryptPassword(p string) (string, error) {
	bytes, err := bcrypt.GenerateFromPassword([]byte(p), 14)
	return string(bytes), err
}

func checkPassword(password, hash string) bool {
	err := bcrypt.CompareHashAndPassword([]byte(hash), []byte(password))
	return err != nil
}

func Register(username string, name string, password string, password2, email string) error {
	if username == "" || name == "" || password == "" || password2 == "" || email == "" {
		return errors.New("Empty fields")
	}
	if password != password2 {
		return errors.New("Passwords not match")
	}
	var u User
	u.Username = username
	u.Name = name
	u.Email = email
	u.Password, _ = cryptPassword(password)
	DB.Create(&u)
	return nil
}

func GetName(i uint) string {
	var u User
	DB.Where("id = ?", i).First(&u)
	return u.Name
}
