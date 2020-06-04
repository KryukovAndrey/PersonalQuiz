//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 01.06.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // 1. Передать массив с ответами на этот экран
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты на экране
    // 4. Избавится от кнопки back

    // MARK: - IB Outlets
    @IBOutlet weak var animalTypeLabel: UILabel!
    @IBOutlet weak var aboutAnimalTextLabel: UILabel!
    
    // MARK: - properties
    var answersFromQuestionsVC: [Answer]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true;
        
        let resultAnimal = findAnimalResult(answers: answersFromQuestionsVC!)
        animalTypeLabel.text = "Вы - \(resultAnimal.rawValue)"
        aboutAnimalTextLabel.text = "\(resultAnimal.definition)"
 
    }
    
    deinit {
        print("ResultsViewController has been dealocated")
    }
    
    // MARK: - methods

    func findAnimalResult(answers: [Answer]) -> AnimalType {
                
        var dogNumber = 0
        var catNumber = 0
        var turtleNumber = 0
        var rabbitNumber = 0
                
        for answer in answers {
            
            let type = answer.type
            
            switch type{
            case .dog:  dogNumber += 1
            case .cat: catNumber += 1
            case .turtle: turtleNumber += 1
            case .rabbit: rabbitNumber += 1
            }
        }
        
        var maxNumber = catNumber
        var resultAnimal: AnimalType = .cat

        if maxNumber < dogNumber {
            resultAnimal = .dog
            maxNumber = dogNumber
        }
        
        if maxNumber < turtleNumber {
            resultAnimal = .turtle
            maxNumber = turtleNumber
        }
        
        if maxNumber < rabbitNumber {
            resultAnimal = .rabbit
            maxNumber = rabbitNumber
        }
        
        return resultAnimal
    }
}






