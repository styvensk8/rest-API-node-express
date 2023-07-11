import specialtys from "./specialtys.routes.js"
import documents from "./documents.routes.js"
import doctors from "./doctors.routes.js"
import users from "./users.routes.js"
import appointments from "./appointments.routes.js"


function routesApi(app) {
    app.use("/specialtys", specialtys)
    app.use("/documents", documents)
    app.use("/doctors", doctors)
    app.use("/users", users)
    app.use("/appointments", appointments)
}

export default routesApi