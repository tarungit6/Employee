//
//  Employee.swift
//  Employee
//
//  Created by Tarun Kumar on 13/07/24.
//

import Foundation

struct Employee: Decodable{
    let id: Int
    let name: String
    let imageUrl: String
    let email: String
    let address: String
}
