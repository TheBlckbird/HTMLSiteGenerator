struct InlineGroup: PageElement {
    @ElementBuilder<PageElement> var content: () -> [PageElement]

    func getTagName() -> String? {
        "span"
    }

    func renderContent() -> String {
        content().render()
    }
}
