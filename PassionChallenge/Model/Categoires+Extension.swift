//
//  File.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 14/09/22.
//

import Foundation


extension Categorie {
    static func getCategories() -> [Categorie]{
        
        return [
            Categorie(imageString: "ImageArtesanato", name: "Artesanato"),
            Categorie(imageString: "ImageCulinaria", name: "Culinária"),
            Categorie(imageString: "ImageLiteratura", name: "Literatura"),
            Categorie(imageString: "ImageMusica", name: "Música"),
            Categorie(imageString: "ImageHistoria", name: "História"),
            Categorie(imageString: "ImageCinema", name: "Cinema"),
            Categorie(imageString: "ImageTeatro", name: "Teatro"),
            Categorie(imageString: "ImageAoArLivre", name: "Ar Livre"),
        ]
        
    }
}
