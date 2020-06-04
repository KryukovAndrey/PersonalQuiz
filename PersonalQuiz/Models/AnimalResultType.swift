//
//  AnimalResultType.swift
//  PersonalQuiz
//
//  Created by Andrey on 04.06.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

// Пытался сделать этот класс для логики решения итогового ответа, но не дадумался...


struct AnimalResultType {
    let points: Int
    let type: AnimalType
}

extension AnimalResultType {
    static func getAnimalResult() -> [AnimalResultType] {
        return [
            AnimalResultType(points: 0, type: .dog),
            AnimalResultType(points: 0, type: .cat),
            AnimalResultType(points: 0, type: .turtle),
            AnimalResultType(points: 0, type: .rabbit)
        ]
    }
}
