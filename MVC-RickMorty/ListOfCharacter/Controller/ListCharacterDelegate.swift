//
//  ListCharacterDelegate.swift
//  MVC-RickMorty
//
//  Created by Kevin Amador Rios on 1/5/23.
//

import Foundation
import UIKit


class ListCharacterDelegate: NSObject, UITableViewDelegate {
    var didTapOnCell: ((Int) -> Void)?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didTapOnCell?(indexPath.row)
    }
}
