public protocol PageElement: Element {}

extension [PageElement] {
    func render() -> String {
        self.map { $0.render() }.joined()
    }
}
