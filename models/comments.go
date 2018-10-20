package models

import (
	"time"

	gormTools "github.com/jinzhu/gorm"
)

type Comment struct {
	gormTools.Model `valid:"-"`
	ProjectID       int       `valid:"-"`
	Title           string    `valid:"-"`
	Comment         string    `valid:"-"`
	UserID          int       `valid:"-"`
	UserName        string    `valid:"-"`
	TimeStamp       time.Time `valid:"-"`
}

type CommentData struct {
	Name    string
	Title   string
	Comment string
}

func GetComments(i int) []CommentData {
	var r CommentData
	var rList []CommentData
	rows, _ := DB.Table("comments").Select("user_name, title, comment").Where("project_id = ?", i).Rows()
	for rows.Next() {
		rows.Scan(&r.Name, &r.Title, &r.Comment)
		rList = append(rList, r)
	}
	return rList
}

func SetComment(rid int, tit string, comm string, uid int, nam string) {
	var a Comment
	a.ProjectID = rid
	a.Title = tit
	a.Comment = comm
	a.UserID = uid
	a.UserName = nam
	a.TimeStamp = time.Now()
	DB.Create(&a)
}
