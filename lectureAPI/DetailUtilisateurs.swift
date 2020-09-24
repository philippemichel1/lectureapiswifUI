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

//struct DetailUtilisateurs_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailUtilisateurs(detail: con)
//}
