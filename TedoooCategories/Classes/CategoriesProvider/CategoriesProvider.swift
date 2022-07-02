import Combine

public struct Category {
    public let id: String
    public let text: String
    public let baseImage: UIImage?
    public let image: String
}

public class CategoriesProvider {

    public struct ProvideCategoriesResponse {
        public let instant: Bool
        public let subject: AnyPublisher<[Category], Never>
    }
    
    public func provideCategories() -> ProvideCategoriesResponse {
        return ProvideCategoriesResponse(instant: true, subject: Just([]).eraseToAnyPublisher())
    }
    
}
