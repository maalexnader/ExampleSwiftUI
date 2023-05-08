import SwiftUI
import ExampleUI
import ExampleDomain

struct MainView: View {
    @State var city: Location
    
    var body: some View {
        VStack(spacing: 0) {
            Text(city.title)
                .style(.heading2)
            city.forecast.map { value in
                VStack(spacing: 16) {
                    value.conditions.map {
                        Image(icon(for: $0))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 88, height: 88)
                    }
                    value.temperature.map {
                        Text("\($0) ℃")
                            .style(.heading1)
                    }
                    value.wind.map {
                        Text("Wind: \($0) kmph")
                            .style(.heading4)
                    }
                }
                .padding(.top, 32)
            }
            Spacer()
        }
        .foregroundColor(Color.text)
        .padding(.top, 32)
    }
    
    private func icon(for conditions: WeatherConditions) -> Icon {
        switch conditions {
        case .sunny:
            return Icon.conditionsSunny
        case .cloudy:
            return Icon.conditionsCloudy
        case .partlyCloudy:
            return Icon.conditionsPartlyCloudy
        case .rain:
            return Icon.conditionsRain
        case .thunder:
            return Icon.conditionsThunder
        case .snow:
            return Icon.conditionsSnow
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(
            city: LocationMockFactory().one(forecast: ForecastMockFactory().one(conditions: .snow))
        )
    }
}
