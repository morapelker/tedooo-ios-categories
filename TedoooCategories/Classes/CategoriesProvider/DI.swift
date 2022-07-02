import Swinject

public class CategoriesDIContainer {
    
    private var container: Container!
    
    public static let shared = CategoriesDIContainer()
    
    public func registerContainer(container: Container) {
        self.container = container
        container.register(CategoriesProvider.self) { _ in
            return CategoriesProvider()
        }.inObjectScope(.container)
    }
    
}
