let greetWorld = true

let page = Page {
    Head {
        Title("hi")
    }

    Body {
        Heading { "that's crazy" }
        "Crazy III"

        if greetWorld {
            for _ in 0..<5 {
                Hello(name: "World")
            }
        } else {
            "No greeting :("
        }
    }
}

print(page.render())
