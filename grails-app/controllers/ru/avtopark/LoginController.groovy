package ru.avtopark

class LoginController {

    def index() {
        if (session.getAttribute("admin") != null) {
            render(view: 'enter')
        } else {
            render(view: 'index')
        }
    }

    def login() {
        if (params.get("login") && params.get("password")) {
            Admin admin = Admin.findByLogin(params.login)
            if (admin) {
                if (params.password.equals(admin.password)) {
                    session.admin = admin
                    render view: 'enter'
                } else {
                    render(view: 'index', model: [msg: "password is incorrect"])
                }
            } else {
                render(view: 'index', model: [msg: "user not found"])
            }
        }
    }


    def auth() {
        if (params.get("login") && params.get("password")) {
            Admin admin = Admin.findByLogin(params.login)
            if (admin) {
                if (params.password.equals(admin.password)) {
                    session.admin = admin
                    forward action: 'index'
                } else {
                    render(view: 'index', model: [msg: "password is incorrect"])
                }
            } else {
                render(view: 'index', model: [msg: "user not found"])
            }

        }
    }
}
