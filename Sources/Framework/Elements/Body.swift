struct Body: HTMLRootElement {
    @ElementBuilder<PageElement> var content: () -> [PageElement]

    func getTagName() -> String? {
        "body"
    }

    func renderContent() -> String {
        content().render()
    }
}
