//
//  CharactersAssembly.swift
//  Breaking bad app
//
//  Created by maks on 13.04.2021.
//  Copyright © 2021 maks. All rights reserved.
//

import Foundation
import UIKit

class CharactersAssembly: CharactersAssemblyProtocol {

    func assemblyCharactersViewController() -> CharactersViewController? {
        let controllerID = String(describing: CharactersViewController.self)
        let charactersController = getStoryboard()
            .instantiateViewController(withIdentifier: controllerID)
            as? CharactersViewController

        return charactersController
    }
}

// MARK: - getStoryboard
private extension CharactersAssembly {

    func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "CharactersStoryboard", bundle: nil)
    }
}
