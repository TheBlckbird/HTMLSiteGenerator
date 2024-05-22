protocol Component: Element {
    associatedtype Body: Element
    func body() -> Body
}

extension Component {
    func getTagName() -> String? {
        .none
    }

    func renderContent() -> String {
        body().render()
    }
}
