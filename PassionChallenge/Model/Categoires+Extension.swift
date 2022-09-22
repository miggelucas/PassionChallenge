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
            Categorie(imageString: "ImageArtesanato", name: K.artesanato),
            Categorie(imageString: "ImageCulinaria", name: K.culinaria),
            Categorie(imageString: "ImageLiteratura", name: K.literatura),
            Categorie(imageString: "ImageMusica", name: K.musica),
            Categorie(imageString: "ImageHistoria", name: K.historia),
            Categorie(imageString: "ImageCinema", name: K.cinema),
            Categorie(imageString: "ImageTeatro", name: K.teatro),
            Categorie(imageString: "ImageAoArLivre", name: K.aoArLivre),
        ]
        
    }
}
