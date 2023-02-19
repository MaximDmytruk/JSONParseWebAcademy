//
//  ViewController.swift
//  Task 1-3 JSON
//
//  Created by Maxim Dmytruk on 26.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let pathName = Bundle.main.url(forResource: "RawData", withExtension: "json")!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
        do {
            
            let data = try Data(contentsOf: pathName)
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode(Company.self, from: data)
            
            print("Company: \(jsonData.companyDescription)")
            print("First model: \(jsonData.listOfData.first?.modelNumber ?? "no model")")
            print("First model-countries-last: \(jsonData.listOfData.first?.countries.last ?? "no country")")
            print("Last model-price-firstCountry-name: \(jsonData.listOfData.last?.price.regions.first?.name ?? "noName")")
            print("Last model-price-lastCountry-price: \(jsonData.listOfData.last?.price.regions.last?.price ?? 0)")
            
        } catch {
            print("error")
        }
        
    }
    
}

