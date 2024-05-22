protocol InlineElement: Element, PageElement {}

extension [InlineElement] {
    func render() -> String {
        self.map { $0.render() }.joined()
    }
}
