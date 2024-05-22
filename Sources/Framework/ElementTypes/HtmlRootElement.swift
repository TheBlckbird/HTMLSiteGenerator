public protocol HTMLRootElement: Element {}

extension [HTMLRootElement] {
    func render() -> String {
        self.map { $0.render() }.joined()
    }
}
