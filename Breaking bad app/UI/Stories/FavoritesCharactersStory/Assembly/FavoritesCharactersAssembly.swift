//
//  FavoriteCharactersAssembly.swift
//  Breaking bad app
//
//  Created by maks on 13.04.2021.
//  Copyright © 2021 maks. All rights reserved.
//

import Foundation
import UIKit

class FavoritesCharactersAssembly: FavoritesCharactersAssemblyProtocol {

    func assemblyFavoritesCharactersViewController() -> FavoritesCharactersViewController? {
        let controllerID = String(describing: FavoritesCharactersViewController.self)
        let favoriteCharactersController = getStoryboard()
            .instantiateViewController(withIdentifier: controllerID)
            as? FavoritesCharactersViewController

        return favoriteCharactersController
    }
}

// MARK: - getStoryboard
private extension FavoritesCharactersAssembly {

    func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "FavoritesCharactersStoryboard", bundle: nil)
    }
}
