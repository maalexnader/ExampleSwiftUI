public struct Location {
    public let id: String
    public let title: String
    public let forecast: Forecast?
    
    public init(id: String, title: String, forecast: Forecast?) {
        self.id = id
        self.title = title
        self.forecast = forecast
    }
}
