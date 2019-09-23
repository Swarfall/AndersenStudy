import Foundation

//class Person {
//    private var dog: Dog?
//
//    init(dog: Dog?) {
//        self.dog = dog
//    }
//
//    deinit {
//        print("Person was deleted")
//    }
//}
//
//class Dog {
//    private var person: Person?
//
//    func set(person: Person) {
//        self.person = person
//    }
//
//    deinit {
//        print("Dog was deleted")
//    }
//}
//
//var dog: Dog? = Dog()
//var person: Person? = Person(dog: dog)
////dog.set(person: person)
//person = nil
////dog = nil
//
//
/////////////////////////////////// Delegate //////////////
//
//protocol MyDelegate: class {
//    func someFunc()
//}
//
//class MyClass {
//    var delegate: MyDelegate?
//
//    deinit {
//        print("MyClass was deleted")
//    }
//}
//
//class MyClassUseDelegate: MyDelegate {
//    var myClass = MyClass()
//
//    init() {
//        myClass.delegate = self // weak reference на MyClassUseDelegate
//    }
//
//    func someFunc() {
//
//    }
//
//    deinit {
//        print("MyClassUseDelegate was deleted")
//    }
//}
//
//var myClassDelegate: MyClassUseDelegate? = MyClassUseDelegate()
//myClassDelegate = nil

////////////// //////////////////

//import UIKit
//
//// Протокол для делегирования нажатия кнопки в ViewController
//protocol ButtonDelegate: class {
//    func onButtonTap(sender: UIButton)
//}
//
//class ViewWithTextAndButton: UIView{
//
//    // Объявляем делегат для использования
//    weak var delegate:ButtonDelegate?
//
//    func onButtonTap(sender: UIButton) {
//        // Вызываем делегат в тот момент, когда кнопка нажата
//        delegate?.onButtonTap(sender: sender)
//    }
//}
//
//class MyViewController: UIViewController, ButtonDelegate{
//
//    let viewWithTextAndButton = ViewWithTextAndButton(frame:CGRect(x:0, y:0, width:100, height:100))
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Присваиваем делегат
//        viewWithTextAndButton.delegate = self
//        view.addSubview(viewWithTextAndButton)
//    }
//
//    // MARK: ButtonDelegate
//    // Реализация делегируемой логики здесь
//    func onButtonTap(sender: UIButton) {
//        print("This button was clicked in the subview!")
//    }
//}

//
//class Weak<T: AnyObject> {
//    weak var value : T?
//    init (value: T) {
//        self.value = value
//    }
//}
//
//class Stuff {}
//var weakly : [Weak<Stuff>] = [Weak(value: Stuff()), Weak(value: Stuff())]


//----------20.09.2019----
class Book {
    var pages = [Page]()
    
    func add(_ page : Page) {
        pages.append(page)
    }
}

class Page {
    weak var book : Book?
    
    init(book : Book) {
        self.book = book
    }
}

let book = Book()
let page = Page(book: book)
book.add(page)


/////////////////

//class Human {
//    var firstName: String
//    var lastName: String
//
//    var fullName:(String) -> String = { [unowned self] titlePrefix in
//        return "\(titlePrefix) \(self.firstName) \(self.lastName)"
//    }
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//        print("Human init")
//    }
//
//    deinit {
//        print("Human deinit")
//    }
//}
//
//var humanObj: Human? = Human(firstName: "Jon", lastName: "Snow")
//let fullName = humanObj?.fullName("Mr")
//humanObj = nil


//class Human {
//    var firstName: String
//    var lastName: String
//
//    var fullName: ((String) -> String)?
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    deinit {
//        print("Human deinit")
//    }
//}
//
//var humanObjc: Human = Human(firstName: "Jon", lastName: "Snow")
//var mrClosure = humanObjc.fullName
////mrClosure = { [weak self] (mr: String) -> String in
////    return "\(self.mr) \(humanObjc.firstName)) \(humanObjc.lastName)"
////}
////print(mrClosure("Mr") ?? "")
//
//class Test {
//    var humanObjc: Human = Human(firstName: "Jon", lastName: "Snow")
//
//    func someFunc() {
//        var mrClosure = humanObjc.fullName
//        mrClosure = { [weak self] (mr: String) -> String in
//            return "\(mr) \(self!.humanObjc.firstName)) \(self!.humanObjc.lastName)"
//        }
//    }
//}

// tuple

var tuple = (name: "Jon", lastName: "Snow", age: 25, sex: "Men", status: "Ex king", originalName: "Kit", OriginalLastName: "Harington")


func someFunc(name: String, age: Int) -> (returnName: String, returnAge: Int) {
    return (name, age)
}

var someObjc = someFunc(name: "Jon", age: 25)
let name = someObjc.returnName
let age = someObjc.returnAge
