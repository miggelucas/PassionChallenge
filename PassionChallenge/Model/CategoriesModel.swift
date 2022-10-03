//
//  categoriesCellModel.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 12/09/22.
//

import Foundation

struct Categorie {
    let imageString: String
    let name: String
    
    
    static func getPlaces(forCategorie categorie : String) -> [Place] {
        
        switch categorie{
        case K.artesanato:
            return Place.getArtesanato()
        case K.culinaria:
            return Place.getCulinaria()
        case K.literatura:
            return Place.getLiteratura()
        case K.historia:
            return Place.getHistoria()
        case K.teatro:
            return Place.getTeatro()
        case K.cinema:
            return Place.getCinema()
        case K.aoArLivre:
            return Place.getAoArLivre()
        case K.musica:
            return Place.getMusica()
        default:
            return Place.getRecomendations()
        }
        
    }
}
