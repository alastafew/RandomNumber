//
//  ViewController.swift
//  RandomNumber
//
//  Created by Ast on 09.02.2025.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet private var minimumValueLabel: UILabel!
    @IBOutlet private var maximumValueLabel: UILabel!
    @IBOutlet private var randomValueLabel: UILabel!
    
    @IBOutlet private var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 1 Ссылка на объект
        let settingsVC = segue.destination as? SettingsViewController
        // Кастим объект до нашего класса
        // 3 Передаем через сигвэй в Main, убираем приватность из Settings
        settingsVC?.minimumValue = minimumValueLabel.text
        settingsVC?.maximumValue = maximumValueLabel.text
            
        
    }
    @IBAction private func getRandomNumberButtonPressed() {
        //Извлекаем числа из лейбла String->Int
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 100
        
        //Генерируем число по диапазону, передаём в другой лейбл Int->String
        randomValueLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
        
    }
    // 5 С помощью сигвэя и кнопки SAVE -> Menu EXIT выбираем unwindForsegue
    // И передаём значения обратно в MainVC
    @IBAction func unwind(segue: UIStoryboardSegue) {
        let settingsVC = segue.source as? SettingsViewController
        minimumValueLabel.text = settingsVC?.minimumValueTF.text
        maximumValueLabel.text = settingsVC?.maximumValueTF.text
        
    }
}


