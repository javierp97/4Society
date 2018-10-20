package controllers

import (
	models4 "4Society/models"
	"fmt"

	"github.com/astaxie/beego"
)

type NewProjectController struct {
	beego.Controller
}

func (c *NewProjectController) Get() {
	a, _ := models4.ReadAllTags()
	println("pol me devuelve los siguientes tags")
	c.Data["tags"] = a
	c.TplName = "newproject.tpl"
}

func (c *NewProjectController) RetrieveInfoNewProject() {
	println("entro a guardar las cosas")
	title := c.GetString("Title")
	println(title)
	description := c.GetString("Description")
	println(description)
	where := c.GetString("Where")
	println(where)
	when := c.GetString("When")
	println(when)
	select1 := c.GetString("Select1")
	select2 := c.GetString("Select2")
	select3 := c.GetString("Select3")
	fmt.Println(select1, select2, select3)
	image := c.GetString("Image")
	//imageB64, _ := c.GetInt64("ImageB64")
	//fmt.Println(imageB64)
	//var path string
	//path = "/static/img/" + image
	println(image)
	//projecttitle := c.GetString("projecttitle")
	//description := c.GetString("description")
	//image := c.GetFile("image")
	//tags := c.GetStrings("tags")
	//time := c.GetString("time")
	//println(projecttitle, description, tags, time)
	//c.TplName = "projects.tpl"
	//funciones de insertar en la base de datos
}
