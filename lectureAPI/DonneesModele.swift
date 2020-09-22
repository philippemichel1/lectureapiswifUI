//
//  DonneesModele.swift
//  lectureAPI
//
//  Created by Philippe MICHEL on 22/09/2020.
//

import Foundation

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
}

struct company:Decodable {
    var name:String
    var catchPhrase:String
    var bs:String
}

