//
//  CityCell.swift
//  cities-combine
//
//  Created by Marcio Alexandre Barbosa on 28/06/22.
//

import Combine
import UIKit

class CityCell: UITableViewCell {
    
    @IBOutlet weak var cityName: UILabel!
    
    @IBOutlet weak var averageTemperature: UILabel!
    
    var actionPublisher = PassthroughSubject<Action, Never>()
    
    private var city: City!
    
    @IBAction func didTapShowKoppenButton() {
        actionPublisher.send(.showKoppen(city))
    }
    
    func populate(with city: City) {
        self.city = city
        cityName.text = city.name
        averageTemperature.text = "\(city.averageTemperature)"
    }
}

extension CityCell {
    enum Action {
        case showKoppen(City)
    }
}
