public protocol HeadElement: Element {}

extension [HeadElement] {
    func render() -> String {
        self.map { $0.render() }.joined()
    }
}
