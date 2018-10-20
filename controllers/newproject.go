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
	session := c.StartSession()
	userID := session.Get("UserID")
	if userID != nil {
		c.Data["nam"] = session.Get("Name")
		c.Data["UserID"] = userID
	}
	a, _ := models4.ReadAllTags()
	println("pol me devuelve los siguientes tags")
	c.Data["tags"] = a
	c.TplName = "newproject.tpl"
}

func (c *NewProjectController) RetrieveInfoNewProject() {
	session := c.StartSession()
	userID := session.Get("UserID")
	if userID != nil {
		c.Data["nam"] = session.Get("Name")
		c.Data["UserID"] = userID
	}
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
	s := image[12:]
	var path string
	path = "/static/img/" + s
	println("viene la path de la imagen")
	fmt.Println(s)
	Checkbox1, _ := c.GetBool("Checkbox1")
	Checkbox2, _ := c.GetBool("Checkbox2")
	Checkbox3, _ := c.GetBool("Checkbox3")

	var proyecto models4.Project
	proyecto.Description = description
	proyecto.EconomicSupport = Checkbox1
	proyecto.HumanSupport = Checkbox3
	proyecto.Date = when
	proyecto.IdCreator = 1
	proyecto.Image = path
	proyecto.MaterialSupport = Checkbox2
	proyecto.Place = where
	proyecto.TAG1 = select1
	proyecto.TAG2 = select2
	proyecto.TAG3 = select3
	proyecto.Title = title
	proyecto.CreateProject()

}
