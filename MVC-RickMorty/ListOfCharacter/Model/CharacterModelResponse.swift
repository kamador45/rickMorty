//
//  Model.swift
//  MVC-RickMorty
//
//  Created by Kevin Amador Rios on 12/26/22.
//

import Foundation

struct CharacterModelResponse: Decodable {
    let results: [CharacterModel]
}
