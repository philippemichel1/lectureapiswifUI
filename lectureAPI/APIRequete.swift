//
//  APIRequete.swift
//  lectureAPI
//
//  Created by Philippe MICHEL on 22/09/2020.
//

import Foundation

class APIRequete:ObservableObject {
    @Published var listeUtilisateurs:[personne] = []
    
    // execution de la connexion à URL
    func startRequeteJSONDecoder() {
        let urlString = "https://jsonplaceholder.typicode.com/users"
        // verication que l'on à bien une url
        if let url = URL(string: urlString) {
            //ouverture de session
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                // verification à ton des donnees
                if let mesDonnees = data {
                    do {
                        // essai de decoder le fichier struct
                        let resultat = try JSONDecoder().decode([personne].self, from: mesDonnees)
                        DispatchQueue.main.async { [self] in
                         // lecture des variable de la struct
                            // rrempli le le tableau
                            self.listeUtilisateurs = resultat
                        }
                    } catch {
                       print(error.localizedDescription)
                    }
                } // fin de verivication de données
            }.resume() // resultat de la requete
            
        } // url
    }
    // Mon ancienne solution
}
