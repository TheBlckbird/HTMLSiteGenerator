@resultBuilder
struct ElementBuilder<T> {
    static func buildBlock(_ components: [T]...) -> [T] {
        components.flatMap { $0 }
    }

    static func buildExpression(_ expression: T) -> [T] {
        [expression]
    }

    static func buildOptional(_ component: [T]?) -> [T] {
        component ?? []
    }

    static func buildEither(first component: [T]) -> [T] {
        component
    }

    static func buildEither(second component: [T]) -> [T] {
        component
    }

    static func buildArray(_ components: [[T]]) -> [T] {
        components.flatMap { $0 }
    }
}
