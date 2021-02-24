//
//  DonneesModele.swift
//  lectureAPI
//
//  Created by Philippe MICHEL on 22/09/2020.
//


// decoder le fichier json 
import Foundation
import MapKit

struct personne:Decodable {
    var id :Int
    var name:String
    var username:String
    var email:String
    var address:address
    var phone:String
    var website:String
    var company:company
    
}

struct address:Decodable {
   var street:String
   var suite:String
   var city:String
   var zipcode:String
   var geo:geo
}

struct geo:Decodable {
    var lat:String
    var lng:String
    
    // return des cordonnee géographique
    func CoordoneeGeo(latitisudeString:String, longitudeString:String) -> CLLocationCoordinate2D {
        var latitude:Double?
        var longitude:Double?
        latitude = Double(latitisudeString)
        longitude = Double(longitudeString)
        return CLLocationCoordinate2D(latitude: latitude!, longitude: longitude!)
        
    }
    
    // convertion donnée string vers double
    func convStrDouble(donneeString:String) -> Double {
        var valeurDouble:Double?
        valeurDouble = Double(donneeString)
        return valeurDouble!
    }
    
}

struct company:Decodable {
    var name:String
    var catchPhrase:String
    var bs:String
}

