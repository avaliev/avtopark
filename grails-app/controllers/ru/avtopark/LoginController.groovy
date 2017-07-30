package ru.avtopark

class LoginController {

    def index() {}

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
}
