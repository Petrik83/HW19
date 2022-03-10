//
//  RadioModel.swift
//  HW16
//
//  Created by Александр Петрович on 28.01.2022.
//

import Foundation

struct RadioItem {
    
    let image: String
    let title: String
    let id = UUID()
}

extension RadioItem: Hashable, Identifiable {
    static func getHorizontalData() -> [RadioItem] {
        return [
            RadioItem(image: "Хип-хоп на русском", title: "Хип-хоп на русском"),
            RadioItem(image: "Хиты на русском", title: "Хиты на русском"),
            RadioItem(image: "Чилаут", title: "Чилаут"),
            RadioItem(image: "Хип-хоп", title: "Хип-хоп"),
            RadioItem(image: "Поп-музыка", title: "Поп-музыка"),
            RadioItem(image: "Танцевальная музыка", title: "Танцевальная музыка"),
            RadioItem(image: "Хиты", title: "Хиты")
        ]}
    
    static func getVerticalData() -> [RadioItem] {
    return [
        RadioItem(image: "Хип-хоп на русском", title: "Хип-хоп на русском"),
        RadioItem(image: "Классика", title: "Классика"),
        RadioItem(image: "Хиты 80-х", title: "Хиты 80-х"),
        RadioItem(image: "Глубокий сон", title: "Глубокий сон"),
        RadioItem(image: "Колыбельные", title: "Колыбельные"),
        RadioItem(image: "Смус-джас", title: "Смус-джас"),
        RadioItem(image: "Хип-хоп 4", title: "Хип-хоп"),
        RadioItem(image: "Классика рока", title: "Классика рока"),
        RadioItem(image: "Детские песни на русском", title: "Детские песни на русском"),
        RadioItem(image: "Поп на русском", title: "Поп на русском"),
        RadioItem(image: "Рок на русском", title: "Рок на русском")
    ]}
    static var horizontalRadioItem = RadioItem.getHorizontalData()
    static var verticalRadioItem = RadioItem.getVerticalData()
}
