//
//  SettingsViewController.swift
//  RandomNumber
//
//  Created by Ast on 09.02.2025.
//

import UIKit

final class SettingsViewController: UIViewController {

    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    // 2 Посредники для прогрузки в память до viewDidLoad
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 4 Передаем данные после инициализации
        minimumValueTF.text = minimumValue
        maximumValueTF.text = maximumValue
    }
    
    @IBAction private func cancelButtonAction() {
        dismiss(animated: true) //Просто закрывает экран
    }
}
