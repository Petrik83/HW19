//
//  Model.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 26.01.22.
//

import Foundation

struct Item {
    
    let icon: String
    let title: String
    let id = UUID()
}

extension Item: Identifiable {
    static func getData() -> [Item] {
        return [
            Item(icon: "music.note.list", title: "Плейлисты"),
            Item(icon: "rectangle.stack", title: "Альбомы"),
            Item(icon: "music.note", title: "Песни"),
            Item(icon: "music.note.tv", title: "Видеоклипы"),
            Item(icon: "music.mic", title: "Артисты"),
            Item(icon: "tv", title: "Телешоу и фильмы"),
            Item(icon: "guitars", title: "Жанры"),
            Item(icon: "person.2.crop.square.stack", title: "Сборники"),
            Item(icon: "music.quarternote.3", title: "Авторы"),
            Item(icon: "arrow.down.circle", title: "Загружено"),
            Item(icon: "music.note.house", title: "Домашняя коллекция")
        ]}
    static var list = Item.getData()
    }
