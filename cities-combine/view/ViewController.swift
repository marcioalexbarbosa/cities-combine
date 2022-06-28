//
//  CitiesViewController.swift
//  migrating-to-combine
//
//  Created by Marcio Alexandre Barbosa on 28/06/22.
//

import Combine
import UIKit

class CitiesViewController: UITableViewController {

    var cities = [City]()
    
    var tokens = Set<AnyCancellable>()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getCities()
    }
    
    var getCitiesToken: AnyCancellable?
    func getCities() {
        getCitiesToken = NetworkingService.getCities()
            .receive(on: DispatchQueue.main)
            .sink(
                receiveCompletion: { (completion) in
                    switch completion {
                    case .finished:
                        print("Publisher stopped observing")
                        
                    case .failure(let error):
                        print("This is any error passed to our future", error)
                    }
                },
                receiveValue: { [weak self] (cities) in
                    self?.cities = cities
                    self?.tableView.reloadData()
                }
            )
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath)
        
        let cityCell = cell as? CityCell
        let city = cities[indexPath.row]
        
        cityCell?.actionPublisher.sink(receiveValue: { [weak self] action in
            switch action {
            case .showKoppen(let city):
                self?.showKoppen(for: city)
            }
        }).store(in: &tokens)
        
        cityCell?.populate(with: city)
        
        return cell
    }
    
    func showKoppen(for city: City) {
        AlertService.showAlert(with: city.koppen.rawValue, in: self)
    }
    
}
