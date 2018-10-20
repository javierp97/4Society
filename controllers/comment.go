package controllers

import (
	"4Society/models"
	"time"

	"github.com/astaxie/beego"
)

type CommentController struct {
	beego.Controller
}

func (c *CommentController) Post() {
	var com models.Comment
	com.Title = c.GetString("Title")
	com.Comment = c.GetString("Comment")
	aux, _ := c.GetInt("UserID")
	com.UserID = uint(aux)
	com.UserName = c.GetString("Name")
	com.TimeStamp = time.Now()
	com.CreateComment()
}
