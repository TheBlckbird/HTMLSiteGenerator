struct Group: PageElement {
    @ElementBuilder<PageElement> var content: () -> [PageElement]

    func getTagName() -> String? {
        "div"
    }

    func renderContent() -> String {
        content().render()
    }
}
