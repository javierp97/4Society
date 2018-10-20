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
	UserID          uint      `valid:"-"`
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

func (c *Comment) CreateComment() uint {
	DB.Create(c)
	return c.ID
}
