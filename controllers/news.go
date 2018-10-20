package controllers

import (
	"github.com/astaxie/beego"
)

type NewsController struct {
	beego.Controller
}

func (c *NewsController) Get() {
	c.TplName = "news.tpl"
	session := c.StartSession()
	userID := session.Get("UserID")
	if userID != nil {
		c.Data["nam"] = session.Get("Name")
	}
}
