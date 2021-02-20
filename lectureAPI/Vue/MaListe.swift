//
//  MaListe.swift
//  lectureAPI
//
//  Created by Philippe MICHEL on 22/09/2020.
//

import SwiftUI

struct MaListe: View {
    @StateObject var connexion = APIRequete()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(connexion.listeUtilisateurs,id: \.id) { donnee  in
                    HStack {
                        Image(systemName: "person.circle")
                            .foregroundColor(.red)
                        NavigationLink(
                            destination: DetailUtilisateurs(detail: donnee),
                            label: {
                                Text(" nom: \(donnee.name)")
                            })
                    }
                }
            }
            .navigationTitle("Liste des Utilisateurs")
            .onAppear {
                self.connexion.startRequeteJSONDecoder()
            }
        } // fin body
    }
}

struct MaListe_Previews: PreviewProvider {
    static var previews: some View {
        MaListe()
    }
}
