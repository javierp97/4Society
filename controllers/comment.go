package controllers

import (
	"4Society/models"

	"github.com/astaxie/beego"
)

type CommentController struct {
	beego.Controller
}

func (c *CommentController) Post() {
	c.TplName = "a.tpl"
	n := c.GetString("Name")
	t := c.GetString("Title")
	co := c.GetString("Comment")
	u, _ := c.GetInt("UserID")
	r, _ := c.GetInt("RestaurantID")
	models.SetComment(r, t, co, u, n)
}
