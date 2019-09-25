import UIKit

protocol CalculateProtocol {
    func summ(a: Int, b: Int) -> Int
}

extension CalculateProtocol {
    func summ(a: Int, b: Int) -> Int {
        return a+b
    }
}

class MyClass: CalculateProtocol {

}

class AnotherClass: CalculateProtocol {
    func summ(a: Int, b: Int) -> Int {
        return a + b + 1
    }
}


var objMyClass = MyClass()
print(objMyClass.summ(a: 2, b: 2))

var anotherObj = AnotherClass()
print(anotherObj.summ(a: 2, b: 2))
