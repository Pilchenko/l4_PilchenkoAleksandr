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
        func windowOpen() {
            windowState = .open
        }
        
        func windowClose() {
            windowState = .close
        }
        
        func engineStart() {
            engineState = .start
        }
    
    func engineStop() {
        engineState = .stop
    }
}

enum HingerRoof {
    case open, close
}

enum Engine {
    case b20b
    case d16
    case b18
}

enum Turbo {
    case yes, no
}

class Honda: Car {
    var hingerRoof: HingerRoof
    var engine : Engine
    var turbo: Turbo
    
    
    init(marka: String, model: String, yearMaking: Int, windowState: WindowState, engineState: EngineState, hingerRoof: HingerRoof, engine: Engine, turbo: Turbo){
        self.hingerRoof = hingerRoof
        self.engine = engine
        self.turbo = turbo
        super.init(marka: marka, model: model, yearMaking: yearMaking, windowState: windowState, engineState: engineState)
    }
    func openRoof() {
        hingerRoof = .open
    }
    
    func closeRoof() {
        hingerRoof = .close
    }
    
    func engineB20b() {
        engine = .b20b
    }
    
    func engineD16() {
        engine = .d16
    }
    
    func engineB18() {
        engine = .b18
    }
    
    func turboYes() {
        turbo = .yes
    }
    
    func torboNo() {
        turbo = .no
    }
    
    func printInfo() {
        print("Автомобиль марки: \(marka), модель \(model)")
        print("Год выпуска: \(yearMaking)")
        print("Окна: \(windowState)")
        print("Состояние двигателя: \(engineState)")
        print("Крыша: \(hingerRoof)")
        print("Двигатель: \(engine)")
        print("Наличие турбины: \(turbo)")
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

var honda1 = Honda(marka: "Honda", model: "DelSol", yearMaking: 1994, windowState: .close, engineState: .stop, hingerRoof: .close, engine: .d16, turbo: .no)

honda1.printInfo()
print("---------")
print("Пора свапнуть мотор на что-нибудь помощнее и поставить турбину")
honda1.engineB20b()
honda1.turboYes()
print("Проверка двигателя")
honda1.engineStart()
print("Статус двигателя: \(honda1.engineState)")
print("Замена двигателя прошла усппешно!")
