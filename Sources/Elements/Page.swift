struct Page: Element {
    @ElementBuilder<HTMLRootElement> var content: () -> [HTMLRootElement]

    func getTagName() -> String? {
        "html"
    }

    func renderContent() -> String {
        content().render()
    }

    func render() -> String {
        "<!DOCTYPE html><html>\(renderContent())</html>"
    }
}
