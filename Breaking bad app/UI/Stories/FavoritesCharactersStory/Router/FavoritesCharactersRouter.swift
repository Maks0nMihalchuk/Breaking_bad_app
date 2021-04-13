//
//  FavoritesCharactersRouter.swift
//  Breaking bad app
//
//  Created by maks on 13.04.2021.
//  Copyright © 2021 maks. All rights reserved.
//

import Foundation
import UIKit

class FavoritesCharactersRouter: FavoritesCharactersRoutingProtocol {
    private let assembly: FavoritesCharactersAssemblyProtocol

    init(assembly: FavoritesCharactersAssemblyProtocol) {
        self.assembly = assembly
    }

    func showFavoritesCharactersStory(from: inout UIViewController, animated: Bool) {
        let favoritesCharactersController = assembly.assemblyFavoritesCharactersViewController()

        guard let controller = favoritesCharactersController else { return }

        if from is UINavigationController {
            guard let navigationController = from as? UINavigationController else { return }

            navigationController.viewControllers = [controller]
        }
    }
}
