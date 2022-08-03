//
//  QuestionModel.swift
//  PersonalQuiz
//
//  Created by Swift Learning on 03.08.2022.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question.init(
                title: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", type: .dog),
                    Answer(title: "Рыба", type: .cat),
                    Answer(title: "Морковь", type: .rabbit),
                    Answer(title: "Кукуруза", type: .turtle)
                ]
            ),
            Question.init(
                title: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(title: "Плавать", type: .dog),
                    Answer(title: "Спать", type: .cat),
                    Answer(title: "Обниматься", type: .rabbit),
                    Answer(title: "Есть", type: .turtle)
                ]
            ),
            Question.init(
                title: "Любите ли вы поездки на машине?",
                type: .ranged,
                answers: [
                    Answer(title: "Ненавижу", type: .cat),
                    Answer(title: "Нервичаю", type: .rabbit),
                    Answer(title: "Не замечаю", type: .turtle),
                    Answer(title: "Обожаю", type: .dog)
                ]
            )
        ]
    }
}

struct Answer {
    let title: String
    let type: AmimalType
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum AmimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии"
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}


