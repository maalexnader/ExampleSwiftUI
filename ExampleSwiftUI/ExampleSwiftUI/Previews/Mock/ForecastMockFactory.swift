import ExampleDomain

final class ForecastMockFactory {
    func one(temperature: Int? = 32, wind: Int? = 7, conditions: WeatherConditions? = .partlyCloudy) -> Forecast {
        Forecast(temperature: temperature, wind: wind, conditions: conditions)
    }
}
