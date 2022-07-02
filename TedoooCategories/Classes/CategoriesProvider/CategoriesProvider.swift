import Combine

public struct Category {
    let id: String
    let text: String
    let baseImage: UIImage?
    let image: String
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
