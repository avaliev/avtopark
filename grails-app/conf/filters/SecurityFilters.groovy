package filters

class SecurityFilters {

    def filters = {
        custompage(controller: 'custompage', action: '*') {
            before = {
                if (!session.admin) {
                    redirect(url: "/login")
                    return false
                }
            }
        }

        city(controller: 'city', action: '*') {
            before = {
                if (!session.admin) {
                    redirect(url: "/login")
                    return false
                }
            }
        }
    }
}
