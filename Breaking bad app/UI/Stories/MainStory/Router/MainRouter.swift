//
//  MainRouter.swift
//  Breaking bad app
//
//  Created by maks on 13.04.2021.
//  Copyright © 2021 maks. All rights reserved.
//

import Foundation
import UIKit

class MainRouter: MainRoutingProtocol {

    private let assembly: MainAssemblyProtocol
    private let charactersRouter: CharactersRoutingProtocol
    private let favoritesCharactersRouter: FavoritesCharactersRoutingProtocol

    init(assembly: MainAssemblyProtocol,
         charactersRouter: CharactersRoutingProtocol,
         favoritesCharactersRouter: FavoritesCharactersRoutingProtocol) {

        self.assembly = assembly
        self.charactersRouter = charactersRouter
        self.favoritesCharactersRouter = favoritesCharactersRouter
    }

    func showMainStory(_ viewController: UIViewController, animated: Bool) {
        let tabBarController = assembly.assemblyTabBarController()
        let charactersController = getCharactersViewController()
        let favoritesCharactersController = getFavoritesCharactersViewController()

        let viewControllers: [UIViewController] = [charactersController, favoritesCharactersController]
        tabBarController.setViewControllers(viewControllers, animated: animated)

        if viewController is UINavigationController {
            guard let navigationController = viewController as? UINavigationController else { return }

            navigationController.viewControllers = [tabBarController]
            navigationController.navigationBar.isHidden = true
        }
    }
}

// MARK: - setup tabBarItem
private extension MainRouter {

    func getCharactersViewController() -> UIViewController {
        var charactersViewController: UIViewController = UINavigationController()
        charactersRouter.showCharactersStory(from: &charactersViewController, animated: true)

        return charactersViewController
    }

    func getFavoritesCharactersViewController() -> UIViewController {
        var favoritesCharactersViewController: UIViewController = UINavigationController()
        favoritesCharactersRouter.showFavoritesCharactersStory(from: &favoritesCharactersViewController, animated: true)

        return favoritesCharactersViewController
    }
}
