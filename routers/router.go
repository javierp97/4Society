package routers

import (
	"4Society/controllers"

	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/login", &controllers.LoginController{})
	beego.Router("/logout", &controllers.LogoutController{})
	beego.Router("/register", &controllers.RegisterController{})
	beego.Router("/projects", &controllers.ProjectsController{})
	beego.Router("/news", &controllers.NewsController{})
	beego.Router("/project", &controllers.ProjectController{})
	beego.Router("/new", &controllers.NewController{})
	beego.Router("/comment", &controllers.CommentController{})
	beego.Router("/newproject", &controllers.NewProjectController{})
	beego.Router("/retrieveinfonewproject", &controllers.NewProjectController{}, "post:RetrieveInfoNewProject")
}
