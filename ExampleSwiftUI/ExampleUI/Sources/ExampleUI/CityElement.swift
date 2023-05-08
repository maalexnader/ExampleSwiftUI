import SwiftUI

struct CityElement: View {
    var body: some View {
        HStack {
            Text("Yerevan")
                .style(.heading3)
                .padding(.horizontal, Constants.horizontalPadding)
            Spacer()
        }
    }
}

struct CityElement_Previews: PreviewProvider {
    static var previews: some View {
        CityElement()
    }
}
