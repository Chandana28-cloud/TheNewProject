//
//  PeopleData.swift
//  PracticeProject
//
//  Created by Ravipati Lakshmi Sai Chandana on 07/02/22.
//

import Foundation

struct PeopleData: Decodable {
    
    let data: [Data1]
}
struct Data1: Decodable {
    
    let name: String
    let email: String
}
