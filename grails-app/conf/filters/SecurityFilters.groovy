package filters

class SecurityFilters {

    def filters = {
        custompage(controller: 'custompage', action: '*') {
            before = {
                if (!session.admin) {
                    redirect(controller: 'login')
                    return false
                }
            }
        }

        pageGroup(controller: 'pageGroup', action: '*') {
            before = {
                if (!session.admin) {
                    redirect(controller: 'login')
                    return false
                }
            }
        }

        city(controller: 'city', action: '*') {
            before = {
                if (!session.admin) {
                    redirect(controller: 'login')
                    return false
                }
            }
        }

        intent(controller: 'intent', action: '*') {
            before = {
                if (!session.admin) {
                    redirect(controller: 'login')
                    return false
                }
            }
        }


    }
}
