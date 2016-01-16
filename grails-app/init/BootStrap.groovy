class BootStrap {

    def init = { servletContext ->
    // uncomment to create Person objects on startup...
//        40.times {
//            new demo.Person(name: "Name $it", isActive: true).save()
//        }
    }
    def destroy = {
    }
}
