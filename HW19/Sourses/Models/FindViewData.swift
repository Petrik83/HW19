//
//  FindViewData.swift
//  HW16
//
//  Created by Александр Петрович on 04.02.2022.
//

import Foundation

struct FindViewItem {
    let image: String
    let title: String
    let categoryViewItem: CategoryViewItem
}

struct CategoryViewItem {
    let firstSectionItem: [FirstSectionItem]
    let secondSectionItem: [SectionItem]
    let therdSectionItem: [SectionItem]
}

struct FirstSectionItem {
    let image: String
    let name: String
    let title: String
    let subTitle: String
}

struct SectionItem: Hashable {
    let image: String
    let title: String
    let subTitle: String
    let compositionDuration: Double
}


extension FindViewItem {
    static func getFindViewData() -> [FindViewItem] {
        return [
            FindViewItem(image: "Пространственное аудио", title: "Пространственное аудио", categoryViewItem: CategoryViewItem(
                firstSectionItem: [FirstSectionItem(image: "KOD", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "KOD", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "4Your Eyez Only", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "4Your Eyez Only", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "Revenge of the Dreamers II", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "Revenge of the Dreamers II", subTitle: "Dreamville & J. Cole")],
                secondSectionItem: [SectionItem(image: "Сздано для пространственного аудио", title: "Сздано для пространственного аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Классика в пространственном аудио", title: "Классика в пространственном аудио", subTitle: "Apple Music Классика", compositionDuration: 0),
                                    SectionItem(image: "Поп в пространственном аудио", title: "Поп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Рок в пространственном аудио", title: "Рок в пространственном аудио", subTitle: "Apple Music Рок", compositionDuration: 0),
                                    SectionItem(image: "Хип-хоп в пространственном аудио", title: "Хип-хоп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Хиты в пространственном аудио", title: "Хиты в пространственном аудио", subTitle: "Apple Music Хиты", compositionDuration: 0)],
                therdSectionItem: [SectionItem(image: "Айзберг", title: "Айзберг", subTitle: "Zivert", compositionDuration: 16000),
                                   SectionItem(image: "Выход в город", title: "Выход в город", subTitle: "Noize MC", compositionDuration: 17000),
                                   SectionItem(image: "BANDANA I", title: "BANDANA I", subTitle: "Big Baby Tape & kizaru", compositionDuration: 16700),
                                   SectionItem(image: "Humble Quest", title: "Humble Quest", subTitle: "Maren Morris", compositionDuration: 18900),
                                   SectionItem(image: "I Got It - Single", title: "I Got It - Single", subTitle: "Ogi", compositionDuration: 19700),
                                   SectionItem(image: "Ivory", title: "Ivory", subTitle: "Omar Apollo", compositionDuration: 15600),
                                   SectionItem(image: "QWERTY LANG", title: "QWERTY LANG", subTitle: "Boulevard Depo & SP4K", compositionDuration: 16000),
                                   SectionItem(image: "The Joker And The Queen", title: "The Joker And The Queen", subTitle: "Ed Sheeran", compositionDuration: 20900)])),
            
            FindViewItem(image: "ПоП на русском", title: "Поп на русском", categoryViewItem: CategoryViewItem(
                firstSectionItem: [FirstSectionItem(image: "КРИОЛИТ_big", name: "НОВЫЙ АЛЬБОМ", title: "КРИОЛИТ", subTitle: "NILETTO"),
                                   FirstSectionItem(image: "SORRY1", name: "НОВЫЙ АЛЬБОМ", title: "SORRY", subTitle: "Ирина Дубцова")],
                secondSectionItem: [SectionItem(image: "Красная дорожка", title: "Красная дорожка", subTitle: "Apple Music Поп на русском", compositionDuration: 0),
                                    SectionItem(image: "Поп-волна", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 0),
                                    SectionItem(image: "Русская поп-музыка", title: "Русская поп-музыка: главное", subTitle: "Apple Music Поп на русском", compositionDuration: 0),
                                    SectionItem(image: "Русские песни о любви", title: "Русские песни о любви: главное", subTitle: "Apple Music Хиты на русском", compositionDuration: 0)],
                therdSectionItem: [SectionItem(image: "Демки. Life", title: "Демки. Life", subTitle: "Алексей Романоф", compositionDuration: 16000),
                                   SectionItem(image: "Имя Твоё", title: "Имя Твоё", subTitle: "SLAVA KAMINSKA", compositionDuration: 17000),
                                   SectionItem(image: "КРИОЛИТ", title: "КРИОЛИТ", subTitle: "NILETTO", compositionDuration: 16700),
                                   SectionItem(image: "Музей Расставаний - ЕР", title: "Музей Расставаний - ЕР", subTitle: "Катя Panterrra", compositionDuration: 18900),
                                   SectionItem(image: "РАССВЕТ - ЕР", title: "РАССВЕТ - ЕР", subTitle: "Горный", compositionDuration: 19700),
                                   SectionItem(image: "Своё", title: "Своё", subTitle: "Любэ", compositionDuration: 15600),
                                   SectionItem(image: "Acoustic - EP", title: "Acoustic - EP", subTitle: "HOMIE", compositionDuration: 16000),
                                   SectionItem(image: "SORRY", title: "SORRY", subTitle: "Ирина Дубцова", compositionDuration: 20900)])),
            
            FindViewItem(image: "Поп", title: "Поп", categoryViewItem: CategoryViewItem(
                firstSectionItem: [FirstSectionItem(image: "KOD", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "KOD", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "4Your Eyez Only", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "4Your Eyez Only", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "Revenge of the Dreamers II", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "Revenge of the Dreamers II", subTitle: "Dreamville & J. Cole")],
                secondSectionItem: [SectionItem(image: "Сздано для пространственного аудио", title: "Сздано для пространственного аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Классика в пространственном аудио", title: "Классика в пространственном аудио", subTitle: "Apple Music Классика", compositionDuration: 0),
                                    SectionItem(image: "Поп в пространственном аудио", title: "Поп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Рок в пространственном аудио", title: "Рок в пространственном аудио", subTitle: "Apple Music Рок", compositionDuration: 0),
                                    SectionItem(image: "Хип-хоп в пространственном аудио", title: "Хип-хоп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Хиты в пространственном аудио", title: "Хиты в пространственном аудио", subTitle: "Apple Music Хиты", compositionDuration: 0)],
                therdSectionItem: [SectionItem(image: "Айзберг", title: "Айзберг", subTitle: "Zivert", compositionDuration: 16000),
                                   SectionItem(image: "Выход в город", title: "Выход в город", subTitle: "Noize MC", compositionDuration: 17000),
                                   SectionItem(image: "BANDANA I", title: "BANDANA I", subTitle: "Big Baby Tape & kizaru", compositionDuration: 16700),
                                   SectionItem(image: "Humble Quest", title: "Humble Quest", subTitle: "Maren Morris", compositionDuration: 18900),
                                   SectionItem(image: "I Got It - Single", title: "I Got It - Single", subTitle: "Ogi", compositionDuration: 19700),
                                   SectionItem(image: "Ivory", title: "Ivory", subTitle: "Omar Apollo", compositionDuration: 15600),
                                   SectionItem(image: "QWERTY LANG", title: "QWERTY LANG", subTitle: "Boulevard Depo & SP4K", compositionDuration: 16000),
                                   SectionItem(image: "The Joker And The Queen", title: "The Joker And The Queen", subTitle: "Ed Sheeran", compositionDuration: 20900),
                                   SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                   SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)])),
            
            FindViewItem(image: "РОк на русском", title: "Рок на русском", categoryViewItem: CategoryViewItem(
                firstSectionItem: [FirstSectionItem(image: "KOD", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "KOD", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "4Your Eyez Only", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "4Your Eyez Only", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "Revenge of the Dreamers II", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "Revenge of the Dreamers II", subTitle: "Dreamville & J. Cole")],
                secondSectionItem: [SectionItem(image: "Сздано для пространственного аудио", title: "Сздано для пространственного аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Классика в пространственном аудио", title: "Классика в пространственном аудио", subTitle: "Apple Music Классика", compositionDuration: 0),
                                    SectionItem(image: "Поп в пространственном аудио", title: "Поп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Рок в пространственном аудио", title: "Рок в пространственном аудио", subTitle: "Apple Music Рок", compositionDuration: 0),
                                    SectionItem(image: "Хип-хоп в пространственном аудио", title: "Хип-хоп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Хиты в пространственном аудио", title: "Хиты в пространственном аудио", subTitle: "Apple Music Хиты", compositionDuration: 0)],
                therdSectionItem: [SectionItem(image: "Айзберг", title: "Айзберг", subTitle: "Zivert", compositionDuration: 16000),
                                   SectionItem(image: "Выход в город", title: "Выход в город", subTitle: "Noize MC", compositionDuration: 17000),
                                   SectionItem(image: "BANDANA I", title: "BANDANA I", subTitle: "Big Baby Tape & kizaru", compositionDuration: 16700),
                                   SectionItem(image: "Humble Quest", title: "Humble Quest", subTitle: "Maren Morris", compositionDuration: 18900),
                                   SectionItem(image: "I Got It - Single", title: "I Got It - Single", subTitle: "Ogi", compositionDuration: 19700),
                                   SectionItem(image: "Ivory", title: "Ivory", subTitle: "Omar Apollo", compositionDuration: 15600),
                                   SectionItem(image: "QWERTY LANG", title: "QWERTY LANG", subTitle: "Boulevard Depo & SP4K", compositionDuration: 16000),
                                   SectionItem(image: "The Joker And The Queen", title: "The Joker And The Queen", subTitle: "Ed Sheeran", compositionDuration: 20900),
                                   SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                   SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)])),
            
            FindViewItem(image: "Романтика", title: "Романтика", categoryViewItem: CategoryViewItem(
                firstSectionItem: [FirstSectionItem(image: "KOD", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "KOD", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "4Your Eyez Only", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "4Your Eyez Only", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "Revenge of the Dreamers II", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "Revenge of the Dreamers II", subTitle: "Dreamville & J. Cole")],
                secondSectionItem: [SectionItem(image: "Сздано для пространственного аудио", title: "Сздано для пространственного аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Классика в пространственном аудио", title: "Классика в пространственном аудио", subTitle: "Apple Music Классика", compositionDuration: 0),
                                    SectionItem(image: "Поп в пространственном аудио", title: "Поп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Рок в пространственном аудио", title: "Рок в пространственном аудио", subTitle: "Apple Music Рок", compositionDuration: 0),
                                    SectionItem(image: "Хип-хоп в пространственном аудио", title: "Хип-хоп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Хиты в пространственном аудио", title: "Хиты в пространственном аудио", subTitle: "Apple Music Хиты", compositionDuration: 0)],
                therdSectionItem: [SectionItem(image: "Айзберг", title: "Айзберг", subTitle: "Zivert", compositionDuration: 16000),
                                   SectionItem(image: "Выход в город", title: "Выход в город", subTitle: "Noize MC", compositionDuration: 17000),
                                   SectionItem(image: "BANDANA I", title: "BANDANA I", subTitle: "Big Baby Tape & kizaru", compositionDuration: 16700),
                                   SectionItem(image: "Humble Quest", title: "Humble Quest", subTitle: "Maren Morris", compositionDuration: 18900),
                                   SectionItem(image: "I Got It - Single", title: "I Got It - Single", subTitle: "Ogi", compositionDuration: 19700),
                                   SectionItem(image: "Ivory", title: "Ivory", subTitle: "Omar Apollo", compositionDuration: 15600),
                                   SectionItem(image: "QWERTY LANG", title: "QWERTY LANG", subTitle: "Boulevard Depo & SP4K", compositionDuration: 16000),
                                   SectionItem(image: "The Joker And The Queen", title: "The Joker And The Queen", subTitle: "Ed Sheeran", compositionDuration: 20900),
                                   SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                   SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)])),
            
            FindViewItem(image: "Хип-Хоп на русском", title: "Хип-хоп на русском", categoryViewItem: CategoryViewItem(
                firstSectionItem: [FirstSectionItem(image: "KOD", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "KOD", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "4Your Eyez Only", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "4Your Eyez Only", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "Revenge of the Dreamers II", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "Revenge of the Dreamers II", subTitle: "Dreamville & J. Cole")],
                secondSectionItem: [SectionItem(image: "Сздано для пространственного аудио", title: "Сздано для пространственного аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Классика в пространственном аудио", title: "Классика в пространственном аудио", subTitle: "Apple Music Классика", compositionDuration: 0),
                                    SectionItem(image: "Поп в пространственном аудио", title: "Поп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Рок в пространственном аудио", title: "Рок в пространственном аудио", subTitle: "Apple Music Рок", compositionDuration: 0),
                                    SectionItem(image: "Хип-хоп в пространственном аудио", title: "Хип-хоп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Хиты в пространственном аудио", title: "Хиты в пространственном аудио", subTitle: "Apple Music Хиты", compositionDuration: 0)],
                therdSectionItem: [SectionItem(image: "Айзберг", title: "Айзберг", subTitle: "Zivert", compositionDuration: 16000),
                                   SectionItem(image: "Выход в город", title: "Выход в город", subTitle: "Noize MC", compositionDuration: 17000),
                                   SectionItem(image: "BANDANA I", title: "BANDANA I", subTitle: "Big Baby Tape & kizaru", compositionDuration: 16700),
                                   SectionItem(image: "Humble Quest", title: "Humble Quest", subTitle: "Maren Morris", compositionDuration: 18900),
                                   SectionItem(image: "I Got It - Single", title: "I Got It - Single", subTitle: "Ogi", compositionDuration: 19700),
                                   SectionItem(image: "Ivory", title: "Ivory", subTitle: "Omar Apollo", compositionDuration: 15600),
                                   SectionItem(image: "QWERTY LANG", title: "QWERTY LANG", subTitle: "Boulevard Depo & SP4K", compositionDuration: 16000),
                                   SectionItem(image: "The Joker And The Queen", title: "The Joker And The Queen", subTitle: "Ed Sheeran", compositionDuration: 20900),
                                   SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                   SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)])),
            
            FindViewItem(image: "ХИты", title: "Хиты", categoryViewItem: CategoryViewItem(
                firstSectionItem: [FirstSectionItem(image: "KOD", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "KOD", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "4Your Eyez Only", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "4Your Eyez Only", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "Revenge of the Dreamers II", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "Revenge of the Dreamers II", subTitle: "Dreamville & J. Cole")],
                secondSectionItem: [SectionItem(image: "Сздано для пространственного аудио", title: "Сздано для пространственного аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Классика в пространственном аудио", title: "Классика в пространственном аудио", subTitle: "Apple Music Классика", compositionDuration: 0),
                                    SectionItem(image: "Поп в пространственном аудио", title: "Поп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Рок в пространственном аудио", title: "Рок в пространственном аудио", subTitle: "Apple Music Рок", compositionDuration: 0),
                                    SectionItem(image: "Хип-хоп в пространственном аудио", title: "Хип-хоп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Хиты в пространственном аудио", title: "Хиты в пространственном аудио", subTitle: "Apple Music Хиты", compositionDuration: 0)],
                therdSectionItem: [SectionItem(image: "Айзберг", title: "Айзберг", subTitle: "Zivert", compositionDuration: 16000),
                                   SectionItem(image: "Выход в город", title: "Выход в город", subTitle: "Noize MC", compositionDuration: 17000),
                                   SectionItem(image: "BANDANA I", title: "BANDANA I", subTitle: "Big Baby Tape & kizaru", compositionDuration: 16700),
                                   SectionItem(image: "Humble Quest", title: "Humble Quest", subTitle: "Maren Morris", compositionDuration: 18900),
                                   SectionItem(image: "I Got It - Single", title: "I Got It - Single", subTitle: "Ogi", compositionDuration: 19700),
                                   SectionItem(image: "Ivory", title: "Ivory", subTitle: "Omar Apollo", compositionDuration: 15600),
                                   SectionItem(image: "QWERTY LANG", title: "QWERTY LANG", subTitle: "Boulevard Depo & SP4K", compositionDuration: 16000),
                                   SectionItem(image: "The Joker And The Queen", title: "The Joker And The Queen", subTitle: "Ed Sheeran", compositionDuration: 20900),
                                   SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                   SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)])),
            
            FindViewItem(image: "Хорошее настроение", title: "Хорошее настроение", categoryViewItem: CategoryViewItem(
                firstSectionItem: [FirstSectionItem(image: "KOD", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "KOD", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "4Your Eyez Only", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "4Your Eyez Only", subTitle: "J. Cole"),
                                   FirstSectionItem(image: "Revenge of the Dreamers II", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "Revenge of the Dreamers II", subTitle: "Dreamville & J. Cole")],
                secondSectionItem: [SectionItem(image: "Сздано для пространственного аудио", title: "Сздано для пространственного аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Классика в пространственном аудио", title: "Классика в пространственном аудио", subTitle: "Apple Music Классика", compositionDuration: 0),
                                    SectionItem(image: "Поп в пространственном аудио", title: "Поп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Рок в пространственном аудио", title: "Рок в пространственном аудио", subTitle: "Apple Music Рок", compositionDuration: 0),
                                    SectionItem(image: "Хип-хоп в пространственном аудио", title: "Хип-хоп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                    SectionItem(image: "Хиты в пространственном аудио", title: "Хиты в пространственном аудио", subTitle: "Apple Music Хиты", compositionDuration: 0)],
                therdSectionItem: [SectionItem(image: "Айзберг", title: "Айзберг", subTitle: "Zivert", compositionDuration: 16000),
                                   SectionItem(image: "Выход в город", title: "Выход в город", subTitle: "Noize MC", compositionDuration: 17000),
                                   SectionItem(image: "BANDANA I", title: "BANDANA I", subTitle: "Big Baby Tape & kizaru", compositionDuration: 16700),
                                   SectionItem(image: "Humble Quest", title: "Humble Quest", subTitle: "Maren Morris", compositionDuration: 18900),
                                   SectionItem(image: "I Got It - Single", title: "I Got It - Single", subTitle: "Ogi", compositionDuration: 19700),
                                   SectionItem(image: "Ivory", title: "Ivory", subTitle: "Omar Apollo", compositionDuration: 15600),
                                   SectionItem(image: "QWERTY LANG", title: "QWERTY LANG", subTitle: "Boulevard Depo & SP4K", compositionDuration: 16000),
                                   SectionItem(image: "The Joker And The Queen", title: "The Joker And The Queen", subTitle: "Ed Sheeran", compositionDuration: 20900),
                                   SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                   SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)]))
        ]
    }
    
    static var findViewItem = FindViewItem.getFindViewData()
}
