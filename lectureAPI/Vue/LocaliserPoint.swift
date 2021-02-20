//
//  LocaliserPoint.swift
//  lectureAPI
//
//  Created by Philippe MICHEL on 28/09/2020.
//

import SwiftUI
import MapKit

struct LocaliserPoint: View {
    var maLocalisation:personne
    @State var latitude:Double = -37.3159
    @State var longitude:Double = 81.1496
    @State var location:MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -37.3159, longitude: 81.1496), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    var body: some View {
        VStack {
            Text("Latitude \(latitude)   Longitude \(longitude)")
                .foregroundColor(.red)
            Map(coordinateRegion: $location)
        }
            .onAppear {
                latitude = maLocalisation.address.geo.convStrDouble(donneeString: maLocalisation.address.geo.lat)
                longitude = maLocalisation.address.geo.convStrDouble(donneeString: maLocalisation.address.geo.lng)
                location  = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2))
            }
        
    }
    
}

struct LocaliserPoint_Previews: PreviewProvider {
    static var previews: some View {
        LocaliserPoint(maLocalisation:.init(id: 1, name: "dupont", username: "dupont", email: "email@email.com", address: address.init(street: "rue", suite: "suite", city: "city", zipcode: "21", geo: geo.init(lat: "200", lng: "200")), phone: "321", website: "www.titastus.com", company: company.init(name: "ma socite", catchPhrase: "XXX", bs: "xxx")))
    }
}
