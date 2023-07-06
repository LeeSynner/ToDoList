//
//  ViewController.swift
//  ToDoList
//
//  Created by Сыннер on 04.07.2023.
//

import UIKit

class ViewController: UIViewController {

    private let localizableLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello".localize()
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        localizableLabel.frame = view.bounds
        view.addSubview(localizableLabel)
        // Do any additional setup after loading the view.
    }
}
