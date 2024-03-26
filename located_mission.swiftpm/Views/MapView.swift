import SwiftUI
import MapKit

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
    @State var coordinate = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.789467, longitude: -122.416772), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    let MapLocations = [
            MapLocation(name: "St Francis Memorial Hospital", latitude: 37.789467, longitude: -122.416772),
            MapLocation(name: "The Ritz-Carlton, San Francisco", latitude: 37.791965, longitude: -122.406903),
            MapLocation(name: "Honey Honey Cafe & Crepery", latitude: 37.787891, longitude: -122.411223)
            ]
    
    var body: some View {
        Map(
           coordinateRegion: $coordinate,
           interactionModes: MapInteractionModes.all,
           showsUserLocation: true,
           annotationItems: MapLocations,
           annotationContent: { location in
             MapMarker(coordinate: location.coordinate, tint: .red)
           }
        )
    }
}
