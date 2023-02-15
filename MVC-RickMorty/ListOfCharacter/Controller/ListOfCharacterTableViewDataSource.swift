//
//  ListCharacterTableViewDataSource.swift
//  MVC-RickMorty
//
//  Created by Kevin Amador Rios on 1/5/23.
//

import Foundation
import UIKit

final class ListOfCharacterTableViewDataSource:NSObject, UITableViewDataSource {
    
    //Access to tableView
    private let tableView: UITableView
    
    private(set) var characters:[CharacterModel] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    //init class
    init(tableView: UITableView, characters: [CharacterModel] = []) {
        self.tableView = tableView
        self.characters = characters
    }
    
    //Config DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! CharacterCellView
        let character = characters[indexPath.row]
        cell.configure(character)
        return cell
    }
    
    //set values to array
    func set(characters:[CharacterModel]) {
        self.characters = characters
    }
}
