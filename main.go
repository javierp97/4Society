package main

import (
	"4Society/models"
	_ "4Society/routers"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/session"
)

func main() {
	models.CreateGoLibDB()
	sessionconf := &session.ManagerConfig{
		CookieName: "begoosessionID",
		Gclifetime: 3600,
	}
	beego.GlobalSessions, _ = session.NewManager("memory", sessionconf)
	go beego.GlobalSessions.GC()
	beego.Run()
}
