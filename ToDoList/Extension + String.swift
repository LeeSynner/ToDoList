//
//  Extension + String.swift
//  ToDoList
//
//  Created by Сыннер on 06.07.2023.
//

import Foundation

extension String {
    func localize() -> String {
        var bundle: Bundle? = .main

        if let lang = UserDefaults.standard.string(forKey: Constants.Localization.language) {
            let path = Bundle.main.path(forResource: lang, ofType: "lproj")
            bundle = Bundle(path: path!)
        }

        return NSLocalizedString(
                self,
                tableName: "Localizable",
                bundle: bundle ?? .main,
                value: self,
                comment: self)
    }
}
