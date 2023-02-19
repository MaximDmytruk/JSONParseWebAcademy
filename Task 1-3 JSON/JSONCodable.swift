//
//  JSONCodable.swift
//  Task 1-3 JSON
//
//  Created by Maxim Dmytruk on 26.01.2023.
//

import Foundation


struct Company:Codable {
    
    let count:Int
    let companyDescription:String
    let listOfData: [Device]
}

struct Device:Codable {
    
    let name: String
    let modelNumber: String
    let countries: [String]
    let price: PriceInfo
    let year: Int
}

struct PriceInfo:Codable {
    
    let regions: [RegionPrice]
}

struct RegionPrice:Codable {
    
    let name: String
    let price: Int
}
