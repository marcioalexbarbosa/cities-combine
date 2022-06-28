//
//  NetworkingService.swift
//  cities-combine
//
//  Created by Marcio Alexandre Barbosa on 28/06/22.
//

import Combine
import Foundation

enum NetworkingService {
    static func getCities() -> Future<[City], Error> {
        return Future { promise in
            let cities: [City] = [
                .beloHorizonte,
                .brasilia,
                .cuiaba,
                .curitiba,
                .florianopolis,
                .fortaleza,
                .manaus,
                .portoAlegre,
                .rioDeJaneiro,
                .saoPaulo
            ]
            promise(.success(cities))
        }
    }
}
