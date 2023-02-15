//
//  CharacterModel.swift
//  MVC-RickMorty
//
//  Created by Kevin Amador Rios on 12/26/22.
//

import Foundation

struct CharacterModel: Decodable {
    let name:String
    let status:String
    let species:String
    let image:String
}
