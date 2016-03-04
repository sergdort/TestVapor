
import Vapor
//import VaporStencil

let app = Application()

app.get("/") { _ in
	do {
		return try View(path: "welcome.html")
	} catch _ {
		return "View `welcome.html` not found"
	}
}

// Print what link to visit for default port
print("Visit http://localhost:8080")
app.start(port: 8080)
