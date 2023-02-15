//
//  ApiClient.swift
//  MVC-RickMorty
//
//  Created by Kevin Amador Rios on 12/26/22.
//

import Foundation

final class ListOfCharacterApiClient {
    func getListCharacters() async  -> CharacterModelResponse{
        let url = URL(string: "https://rickandmortyapi.com/api/character")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(CharacterModelResponse.self, from: data)
    }
}
