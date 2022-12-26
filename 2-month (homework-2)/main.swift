//
//  main.swift
//  2-month (homework-2)
//
//  Created by Nurjamal Mirbaizaeva on 25/12/22.
//

import Foundation

//#1. Создать класс Магазин. Свойства: Название, Площадь, Расположение, Часы работы, массив с товарами. Создать класс Товар. Свойства: Название товара, кол-во. Цена товара. После чего путём наследования от класса Магазин создать следующие классы: Магазин автозапчастей, Магазин одежды и заполнить их соответствующими параметрами
class Store{
    var name: String
    var square: String
    var location: String
    var oh: String
    var goods = ["Товары для дома", "Автозапчасти", "Одежда"]
    
    init(name: String, square: String, location: String, oh: String) {
        self.name = name
        self.square = square
        self.location = location
        self.oh = oh
    }
    func showInfo(){
        print("Название Магазина: \(name), Площадь: \(square), Расположение: \(location), Часы работы: \(oh) \n\(goods)")
    }
}
class Good{
    var nameGood: String
    var amount: Int
    var price: Int
    
    init(nameGood: String, amount: Int, price: Int) {
        self.nameGood = nameGood
        self.amount = amount
        self.price = price
    }
    func showGood(){
        print("\(nameGood) - Кол-во: \(amount), Цена: \(price)")
    }
}
class AutoPartsStore: Store{
    var nameAuto: String
    var production: String
    var price: Int
    
    init(name: String, square: String, location: String, oh: String, nameAuto: String, production: String, price: Int) {
        self.nameAuto = nameAuto
        self.production = production
        self.price = price
        super.init(name: name, square: square, location: location, oh: oh)
    }
    override func showInfo(){
        print("\(nameAuto) - Производитель: \(production), Цена: \(price)")
    }
}
class Clothes: Store{
    var nameClothes: String
    var size: String
    var price: Int
    var staff: String

    init(name: String, square: String, location: String, oh: String, nameClothes: String, size: String, price: Int, staff: String) {
        self.nameClothes = nameClothes
        self.size = size
        self.price = price
        self.staff = staff
        super.init(name: name, square: square, location: location, oh: oh)
    }
    func showClothes() {
        print("\(nameClothes) - Размер: \(size), Цена: \(price), Произвоство: \(staff)")
    }
}
var plaza = Store(name: "Plaza", square: "80000kв.m", location: "Бишкек", oh: "08:00 - 00:00")
plaza.showInfo()
var stol = Good(nameGood: "Стол", amount: 12, price: 2500)
stol.showGood()
var sofa = Good(nameGood: "Диван", amount: 3, price: 12000)
sofa.showGood()
var TV = Good(nameGood: "TV", amount: 6, price: 9000)
TV.showGood()
var block = AutoPartsStore(name: "Магазин автозапчастей", square: "30000kв.m", location: "Plaza", oh: "10:00 - 19:00", nameAuto: "Колодка", production: "Австралия", price: 3200)
block.showInfo()
var tire = AutoPartsStore(name: "", square: "", location: "", oh: "", nameAuto: "Шина", production: "Korea", price: 4500)
tire.showInfo()
var bettery = AutoPartsStore(name: "", square: "", location: "", oh: "", nameAuto: "Аккумулятор", production: "UAE", price: 5637)
bettery.showInfo()
var jens = Clothes(name: "Магазин одежды", square: "20000kв.m", location: "Plaza", oh: "09:00 - 20:00", nameClothes: "Jens", size: "XXS", price: 2500, staff: "Korea")
jens.showClothes()
var coat = Clothes(name: "", square: "", location: "", oh: "", nameClothes: "Пальто", size: "36-38", price: 12000, staff: "Korea")
coat.showClothes()
