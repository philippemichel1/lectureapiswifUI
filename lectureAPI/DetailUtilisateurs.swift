//
//  DetailUtilisateurs.swift
//  lectureAPI
//
//  Created by Philippe MICHEL on 22/09/2020.
//

import SwiftUI

struct DetailUtilisateurs: View {
    var detail:personne
    var body: some View {
        VStack {
            Text("Utilisateur:  \(detail.username)")
            Spacer()
            Text("Nom \(detail.name)")
            Text("    \(detail.address.suite)")
            Text("Rue \(detail.address.street)")
            HStack{
                Text("CP \(detail.address.zipcode) ")
                Text("Ville \(detail.address.city) ")
            }
            Text("Téléphone \(detail.phone) ")
            Text("Mail \(detail.email) ")
        }
    }
}

struct DetailUtilisateurs_Previews: PreviewProvider {
    static var previews: some View {
        DetailUtilisateurs(detail:.init(id: 1, name: "dupont", username: "dupont", email: "email@email.com", address: address.init(street: "rue", suite: "suite", city: "city", zipcode: "21", geo: geo.init(lat: "200", lng: "200")), phone: "321", website: "www.titastus.com", company: company.init(name: "ma socite", catchPhrase: "XXX", bs: "xxx")))
    }
    
}
