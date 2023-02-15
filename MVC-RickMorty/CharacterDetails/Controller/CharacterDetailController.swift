//
//  CharacterDetailController.swift
//  MVC-RickMorty
//
//  Created by Kevin Amador Rios on 1/5/23.
//

import Foundation
import UIKit

class CharacterDetailController:UIViewController {
    //Access to viewCell
    var mainView: CharacterDetailView { self.view as! CharacterDetailView }
    
    //Receive info from model
    init(characterDetailModel: CharacterModel) {
        super.init(nibName: nil, bundle: nil)
        mainView.configure(characterDetailModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //LoadView
    override func loadView() {
        //Access to view
        view = CharacterDetailView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
