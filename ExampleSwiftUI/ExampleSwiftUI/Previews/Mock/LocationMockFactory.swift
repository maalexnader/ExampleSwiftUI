import ExampleDomain

final class LocationMockFactory {
    func one(id: String = "Yerevan", title: String = "Yerevan", forecast: Forecast? = nil) -> Location {
        Location(id: id, title: title, forecast: forecast)
    }
}
