//
//  ContentView.swift
//  MapMarkerTest
//
//  Created by Groo on 3/26/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        PinAnnotationMapView(place: IdentifiablePlace(lat: -33.8487648, long: 151.0705223), region: MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -33.8487648, longitude: 151.0705223), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)))
    }
}

#Preview {
    ContentView()
}
