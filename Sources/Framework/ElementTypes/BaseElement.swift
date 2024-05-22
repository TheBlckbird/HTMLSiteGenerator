public protocol Element {
    func getTagName() -> String?
    func renderContent() -> String
}

extension Element {
    public func render() -> String {
        switch getTagName() {
        case .some(let tagName):
            return "<\(tagName)>\(renderContent())</\(tagName)>"

        case .none:
            return renderContent()
        }
    }
}

extension [Element] {
    public func render() -> String {
        self.map { $0.render() }.joined()
    }
}

extension String: Element, PageElement, HeadElement, InlineElement {
    public func getTagName() -> String? {
        Optional.none
    }

    public func renderContent() -> String {
        self
    }
}
