//
//  CharacterListView.swift
//  MVC-RickMorty
//
//  Created by Kevin Amador Rios on 12/26/22.
//

import Foundation
import UIKit

class CharacterListView: UIView {
    
    //Creating tableView
    let characterTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(CharacterCellView.self, forCellReuseIdentifier: "cellId")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //SetupView
    func setupView() {
        addSubview(characterTableView)
        
        //Constraints
        NSLayoutConstraint.activate([
            characterTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            characterTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            characterTableView.topAnchor.constraint(equalTo: topAnchor),
            characterTableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
