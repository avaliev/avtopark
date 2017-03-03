package avto.park

class SecurityFilters {

    def filters = {
        all(controller: 'CustomPage', action: '*') {
            before = {

            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
