struct Heading: PageElement {
    var level: Level = .Highest
    @ElementBuilder<PageElement> var content: () -> [Element]

    func getTagName() -> String? {
        switch level {
        case .Highest:
            return "h1"
        case .Higher:
            return "h2"
        case .High:
            return "h3"
        case .Low:
            return "h4"
        case .Lower:
            return "h5"
        case .Lowest:
            return "h6"
        }
    }

    func renderContent() -> String {
        content().render()
    }

    func level(_ level: Level) -> Self {
        var copy = self
        copy.level = level
        return copy
    }

    enum Level {
        case Highest
        case Higher
        case High
        case Low
        case Lower
        case Lowest
    }
}
