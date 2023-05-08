public struct Forecast {
    public let temperature: Int?
    public let wind: Int?
    public let conditions: WeatherConditions?
    
    public init(temperature: Int?, wind: Int?, conditions: WeatherConditions?) {
        self.temperature = temperature
        self.wind = wind
        self.conditions = conditions
    }
}
