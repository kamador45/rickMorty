//
//  ViewController.swift
//  MVC-RickMorty
//
//  Created by Kevin Amador Rios on 12/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    //Access to viewCell
    var mainView: CharacterListView { self.view as! CharacterListView }
    let apiClient = ListOfCharacterApiClient()
    
    //instance of tableView
    private var tableViewDataSource: ListOfCharacterTableViewDataSource?
    private var tableViewDelegate: ListCharacterDelegate?
    
    
    //LoadView
    override func loadView() {
        //Access to view
        view = CharacterListView()
        tableViewDelegate = ListCharacterDelegate()
        
        tableViewDataSource = ListOfCharacterTableViewDataSource(tableView: mainView.characterTableView)
        mainView.characterTableView.dataSource = tableViewDataSource
        mainView.characterTableView.delegate = tableViewDelegate
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        //Fetch Info
        tableViewDelegate?.didTapOnCell = { [weak self] index in
            //presentViewController
            guard let dataSource = self?.tableViewDataSource else {
                return
            }
            
            let characterModel = dataSource.characters[index]
            let characterDetailViewController = CharacterDetailController(characterDetailModel: characterModel)
            self?.present(characterDetailViewController, animated: true)
        }
        Task {
            let characters = await apiClient.getListCharacters()
            tableViewDataSource?.set(characters: characters.results)
            print("Characters ==>\(characters)")
        }
    }

}

