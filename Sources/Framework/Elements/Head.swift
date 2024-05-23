struct Head: HTMLRootElement {
    @ElementBuilder<HeadElement> var content: () -> [HeadElement]

    func getTagName() -> String? {
        "head"
    }

    func renderContent() -> String {
        content().render()
    }
}
