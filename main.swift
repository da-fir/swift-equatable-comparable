import UIKit

struct Employee: Equatable, Comparable {
    let department: String
    let name: String
    let happinessIndex: Double
    
    static func == (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.name == rhs.name && lhs.department == rhs.department
    }
    
    static func < (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.happinessIndex < rhs.happinessIndex
    }
}
let johnFromIT = Employee(department: "IT", name: "John Doe", happinessIndex: 0.8)
let johnFromHR = Employee(department: "HR", name: "John Doe", happinessIndex: 0.8)
let alsoJohnFromIT = Employee(department: "IT", name: "John Doe", happinessIndex: 0.3)




func isSamePerson(lhs: Employee, rhs: Employee) -> Bool {
    return lhs.name == rhs.name && lhs.department == rhs.department
}

isSamePerson(lhs: johnFromIT, rhs: johnFromHR)
isSamePerson(lhs: johnFromIT, rhs: alsoJohnFromIT)
johnFromHR == johnFromIT
johnFromIT == alsoJohnFromIT

[johnFromHR, johnFromIT].contains(alsoJohnFromIT)


let geralt = Employee(department: "Finance", name: "Geralt Rivia", happinessIndex: 0.9)
let anna = Employee(department: "HR", name: "Anna Henrietta", happinessIndex: 0.7)
let triss = Employee(department: "IT", name: "Triss Merigold", happinessIndex: 0.8)
let empployees = [geralt, anna, triss]
empployees.sorted()
empployees.min()
empployees.max()
