struct Title: HeadElement {
    var text: String

    init(_ text: String) {
        self.text = text
    }

    func getTagName() -> String? {
        "title"
    }

    func renderContent() -> String {
        text
    }
}
