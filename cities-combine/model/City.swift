//
//  City.swift
//  cities-combine
//
// Created by Marcio Alexandre Barbosa on 28/06/22.
//

import Foundation

struct City {
    let name: String
    let averageTemperature: Float
    let koppen: Koppen
}

extension City {
    
    // source: https://pt.wikipedia.org/wiki/Lista_de_capitais_do_Brasil_por_clima
    
    static let beloHorizonte = City(name: "Belo Horizonte", averageTemperature: 21.1, koppen: .Aw)
    static let brasilia = City(name: "Brasília", averageTemperature: 20.6, koppen: .Aw)
    static let cuiaba = City(name: "Cuiabá", averageTemperature: 31.8, koppen: .Aw)
    static let curitiba = City(name: "Curitiba", averageTemperature: 16.8, koppen: .Cfb)
    static let florianopolis = City(name: "Florianópolis", averageTemperature: 20.4, koppen: .Cfa)
    static let fortaleza = City(name: "Fortaleza", averageTemperature: 26.6, koppen: .As)
    static let manaus = City(name: "Manaus", averageTemperature: 26.7, koppen: .Am)
    static let portoAlegre = City(name: "Porto Alegre", averageTemperature: 19.5, koppen: .Cfa)
    static let rioDeJaneiro = City(name: "Rio de Janeiro", averageTemperature: 31.9, koppen: .Aw)
    static let saoPaulo = City(name: "São Paulo", averageTemperature: 23.2, koppen: .Cfa)
    
}
