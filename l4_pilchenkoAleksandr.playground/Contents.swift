import Cocoa

enum WindowState {
    case open, close
}

enum EngineState {
    case start, stop
}

class Car {
    let marka: String
    let model: String
    let yearMaking: Int
    var windowState: WindowState
    var engineState: EngineState
    
    init(marka: String, model: String, yearMaking: Int, windowState: WindowState, engineState: EngineState){
        self.marka = marka
        self.model = model
        self.yearMaking = yearMaking
        self.windowState = windowState
        self.engineState = engineState
    }
}

enum HingerRoof {
    case open, close
}

class SportCar: Car {
    var hingerRoof: HingerRoof
    
    init(marka: String, model: String, yearMaking: Int, windowState: WindowState, engineState: EngineState, hingerRoof: HingerRoof){
        self.hingerRoof = hingerRoof
        super.init(marka: marka, model: model, yearMaking: yearMaking, windowState: windowState, engineState: engineState)
    }
    
    func openRoof() {
        hingerRoof = .open
    }
    
    func closeRoof() {
        hingerRoof = .close
    }
    
    func printInfo() {
        print("Автомобиль марки: \(marka), модель \(model)")
        print("Год выпуска: \(yearMaking)")
        print("Окна: \(windowState)")
        print("Двигатель: \(engineState)")
        print("Крыша: \(hingerRoof)")
    }
}
 
enum Drive4X4 {
    case off, on
}

class TruckCar: Car {
    var drive4x4: Drive4X4
    
    init(marka: String, model: String, yearMaking: Int, windowState: WindowState, engineState: EngineState, drive4x4: Drive4X4){
        self.drive4x4 = drive4x4
        super.init(marka: marka, model: model, yearMaking: yearMaking, windowState: windowState, engineState: engineState)
    }

    func onDrive4x4() {
        drive4x4 = .on
    }
    
    func offDrive4x4() {
        drive4x4 = .off
    }
    
    func printInfo() {
        print("Автомобиль марки: \(marka), модель \(model)")
        print("Год выпуска: \(yearMaking)")
        print("Окна: \(windowState)")
        print("Двигатель: \(engineState)")
        print("Полный привод: \(drive4x4)")
    }
}

    
var truckCar1 = TruckCar(marka: "Ford", model: "F-150", yearMaking: 2020, windowState: .close, engineState: .stop, drive4x4: .off)

truckCar1.printInfo()
print("------------")
truckCar1.onDrive4x4()
print ("Полный привод: \(truckCar1.drive4x4)")

var superCar = SportCar(marka: "Toyota", model: "MRS", yearMaking: 1999, windowState: .close, engineState: .start, hingerRoof: .open)

print("------------")
superCar.printInfo()
superCar.closeRoof()
print("------------")
print("Крыша: \(superCar.hingerRoof)")

