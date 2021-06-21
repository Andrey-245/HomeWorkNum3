//
//  main.swift
//  Описание структур автомобилей
//
//  Created by Андрей  on 20.06.2021.
//

import Foundation

enum Engine {
    
    case start(noisy: String)
    case stop(noisy: String)
    
}

enum Window {
    
    case open(condition: String)
    case close(condition: String)
    
}

enum Trunk{
    
    case full(fullness: String)
    case empty(fullness: String)
    
}

var engine = Engine.start(noisy: "Шумит")
engine = Engine.stop(noisy: "Не шумит")

var window = Window.open(condition: "Открыто")
window = Window.close(condition: "Закрыто")

var trunk = Trunk.full(fullness: "Полный")
trunk = Trunk.empty(fullness: "Пустой")


struct avto {
    
    let name: String // марка автомобиля
    let yearRelease: Int // год выпуска
    var trunkVolume: Double // объем багажника или кузова
    var engineRun: String // запущен ли двигатель
    var openWindow: String // открыты ли окна
    var fullTrunk: String // полный ли багажник
    

 
    func description(){
        print("Машина \(name) \(yearRelease) года выпуска, стоит с \(fullTrunk), объемом \(trunkVolume) л, \(openWindow)  и с \(engineRun).")
    }
    
    mutating func allWindow(openWindow: String){
        
        self.openWindow = "Все окна открыты"
        
    }
    
    mutating func bigTrunk(fullTrunk: String){
        
        self.fullTrunk = "Разгруженным кузовом"
        
    }
    
    mutating func engineStop(engineRun: String){
        
        self.engineRun = "С заглохшим двигателем"
        
    }
    
    
    
init (nameAvto: String, yearReleaseAvto: Int, trunkVolumeAvto: Int, engineRunAvto: String, openWindowAvto: String, fullTrunkAvto: String) {
    
    self.name = nameAvto
    self.yearRelease = yearReleaseAvto
    self.trunkVolume = Double(trunkVolumeAvto)
    self.engineRun = engineRunAvto
    self.openWindow = openWindowAvto
    self.fullTrunk = fullTrunkAvto
    
}

    
        
}


var porsche911 = avto(nameAvto: "Porsche 911 Carrera", yearReleaseAvto: 2019, trunkVolumeAvto: 264, engineRunAvto: "Работающим двигателем", openWindowAvto: "Закрытими окнами", fullTrunkAvto: "Пустым багажником")
var kamaz6520 = avto(nameAvto: "Камаз", yearReleaseAvto: 2017, trunkVolumeAvto: 6000, engineRunAvto: "Не работающим двигателем", openWindowAvto: "Открытыми окнами", fullTrunkAvto: "Наполненным кузовом")



porsche911.allWindow(openWindow: "")
kamaz6520.bigTrunk(fullTrunk: "")
kamaz6520.engineStop(engineRun: "")
porsche911.description()
kamaz6520.description()




