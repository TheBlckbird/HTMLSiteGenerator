public protocol SelfClosingElement: Element {}

extension SelfClosingElement {
    func renderContent() -> String {
        ""
    }

    func render() -> String {
        "<\(getTagName() ?? "")>"
    }
}

extension [SelfClosingElement] {
    func render() -> String {
        self.map { $0.render() }.joined()
    }
}
