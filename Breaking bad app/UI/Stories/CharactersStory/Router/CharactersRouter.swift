//
//  CharactersRouter.swift
//  Breaking bad app
//
//  Created by maks on 13.04.2021.
//  Copyright © 2021 maks. All rights reserved.
//

import Foundation
import UIKit

class CharactersRouter: CharactersRoutingProtocol {
    private let assembly: CharactersAssemblyProtocol

    init(assembly: CharactersAssemblyProtocol) {
        self.assembly = assembly
    }

    func showCharactersStory(from: inout UIViewController, animated: Bool) {
        let charactersController = assembly.assemblyCharactersViewController()

        guard let controller = charactersController else { return }

        if from is UINavigationController {
            guard let navigationController = from as? UINavigationController else { return }

            navigationController.viewControllers = [controller]
        }
    }
}
