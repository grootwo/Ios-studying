import SwiftUI
import MapKit

public extension Color {

    static func random(randomOpacity: Bool = false) -> Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            opacity: randomOpacity ? .random(in: 0...1) : 1
        )
    }
}

struct MapLocation: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct MapView: View {
    @State var coordinate = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.1846343, longitude: 129.0434794), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    let MapLocations = [
        MapLocation(name: "C5", latitude: 36.0141447, longitude: 129.3257511),
        MapLocation(name: "어린이 대공원", latitude: 35.1846343, longitude: 129.0434794),
        MapLocation(name: "시민공원", latitude: 35.1681608, longitude: 129.0573853),
            ]
    
    var body: some View {
        Map(
           coordinateRegion: $coordinate,
           interactionModes: MapInteractionModes.all,
           showsUserLocation: true,
           annotationItems: MapLocations,
           annotationContent: { location in
               MapAnnotation(
                  coordinate: location.coordinate,
                  content: {
                      Image(systemName: "heart.circle.fill").foregroundColor(Color.random())
                     Text(location.name)
                  }
               )
           }
        )
    }
}
