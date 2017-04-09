package avto.park

class SecurityFilters {

    def filters = {
        all(controller: 'custompage', action: '*') {
            before = {
                if (!session.admin) {
                    redirect(url: "/login")
                    return false
                }
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
