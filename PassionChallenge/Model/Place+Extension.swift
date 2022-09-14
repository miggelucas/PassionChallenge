//
//  Place+Extension.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 14/09/22.
//

import Foundation


extension Place {
    
    static func getRecomendations() -> [Place] {
        
        return [
            Place(
                name: "Paço alfândega",
                adress: "Endereço do paço",
                imageURL: "paçoalfandega.png"),
            
            Place(
                name: "Livraria Jaqueira",
                adress: "R. Me. de Deus, 110 - Recife",
                imageURL: "livrariajaqueira.png"),
            
            Place(
                name: "Casa da Cultura",
                adress: "R. Floriano Peixoto, 35182-066 - São José",
                imageURL: "casadacultura.png"),
            
            Place(
                name: "Mercado da Encruzilhada",
                adress: "R. Dr. José Maria, 2-200 - Encruzilhada",
                imageURL: "mercadoencruzilhada.png"),
            
            Place(
                name: "Livraria Jaqueira",
                adress: "R. Me. de Deus, 110 - Recife",
                imageURL: "livrariajaqueira.png"),
            
            Place(
                name: "Praça do sebo",
                adress: "Av. Guararapes, 50010-000 - Santo Antônio",
                imageURL: "praçadosebo.png"),
            
            Place(
                name: "Restaurante Parraxaxá",
                adress: "R. Igarassu, 40 - Santana",
                imageURL: "parraxaxá.png"),
            
            Place(
                name: "Parque Dona Lindu",
                adress: "Av. Boa Viagem, 51030-010 - Boa Viagem",
                imageURL: "donalindu.png"),
            
        ]
        
    }
    
}
