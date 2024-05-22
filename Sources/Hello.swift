struct Hello: Component, PageElement {
    let name: String

    func body() -> some Element {
        Group {
            "Hello, \(name)!"
        }
    }
}
