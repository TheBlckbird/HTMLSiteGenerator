public protocol BlockElement: Element, PageElement {}

extension [BlockElement] {
    func render() -> String {
        self.map { $0.render() }.joined()
    }
}
