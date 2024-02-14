//Lesson6 HW
//Task1

let array1: [Int] = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14]
let array2: [Int] = [14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]

let arraySum = array1 + array2


//Task2

let arrayNumbers: [Int] = [1,2,3,4,5]

//func squareNumberInArray(arrayNumbers arr: [Int]) -> [Int]? {
//    if !arr.isEmpty {
//        var result: [Int] = []
//        for num in arr {
//            result.append(num * num)
//        }
//        return result
//    }
//    return nil
//}
//
//print(squareNumberInArray(arrayNumbers: array1) ?? [0])


//ver2

//func squareNumberInArray(arrayNumbers arr: [Int]) -> [Int]? {
//    if !arr.isEmpty {
//        var result: [Int] = []
//        arr.forEach { num in
//            result.append(num * num)
//        }
//        return result
//    }
//    return nil
//}
//
//print(squareNumberInArray(arrayNumbers: arrayNumbers) ?? [0])


//ver3

//func kwadrNumber(arrayNumbers arr: [Int]) -> [Int]? {
//    if !arr.isEmpty {
//        var result: [Int] = []
//        arr.forEach({ result.append($0 * $0) })
//        return result
//    }
//    return nil
//}
//
//print(kwadrNumber(arrayNumbers: array1) ?? [0])



//ver4

//func squareNumberInArray(arrayNumbers arr: [Int]) -> [Int]? {
//    var result: [Int]? = []
//    arr.isEmpty ? nil : arr.forEach({ result!.append($0 * $0) })
//    return result
//}
//
//print(squareNumberInArray(arrayNumbers: array1) ?? [0])

//ver5

//func squareNumberInArray(arrayNumbers arr: [Int]) -> [Int] {
//    var result: [Int] = []
//    if !arr.isEmpty {
//        arr.map({ result.append($0 * $0)})
//    }
//    return result
//}
//
//print(squareNumberInArray(arrayNumbers: array1))

//ver6

//func squareNumberInArray(arrayNumbers arr: [Int]) -> [Int] {
//    arr.isEmpty ? [] : arr.map({ $0 * $0 })
//}
//
//print(squareNumberInArray(arrayNumbers: array1))

//nil

let arrayNil: [Int]? = nil

//func squareNumberInArrayNil(array arr: [Int]?) -> [Int]? {
//    var result: [Int] = []
//    
//    if let strongArr = arr {
//        strongArr.forEach({ result.append($0 * $0) })
//        return result
//    }
//    return nil
//}
//
//squareNumberInArrayNil(array: arrayNil)
//squareNumberInArrayNil(array: arrayNumbers)


//[nil]

//let arrayNumberNil: [Int?] = [nil]
//
//func squareNumberInArrayNil(array arr: [Int?]) -> [Int?] {
//    var result: [Int?] = []
//    
//    for number in arr {
//        if let strongNumber = number {
//            result.append(strongNumber * strongNumber)
//        } else {
//            if result.isEmpty {
//                return [nil]
//            }
//        }
//    }
//    return result
//}
//
//print(squareNumberInArrayNil(array: arrayNumberNil))
//print(squareNumberInArrayNil(array: arrayNumbers))
//print(squareNumberInArrayNil(array: [1,2,nil,3,nil,nil,4,5]))

//Task3

//func evenNumbersToArray(arr: [Int]) -> [Int] {
//    var result: [Int] = []
//    if !arr.isEmpty {
//        arr.forEach { number in
//            if number % 2 == 0 {
//                result.append(number)
//            }
//        }
//    }
//    return result
//}
//
//
//print(evenNumbersToArray(arr: array1))


//ver2

//func evenNumbersToArrayVer2(arr: [Int]) -> [Int] {
//    var result: [Int] = []
//    
//    if !arr.isEmpty {
//        arr.forEach({
//            if $0 % 2 == 0 { result.append($0) }
//        })
//    }
//    return result
//}
//
//print(evenNumbersToArrayVer2(arr: array1))

//ver3

//let arrayIsEmpty: [Int] = []
//
//func evenNumbersToArrayVer3(arr: [Int]) -> [Int] {
//    var result: [Int] = []
//    if !arr.isEmpty {
//        arr.forEach({
//            if $0 % 2 == 0 { result.append($0) }
//        })
//    }
//    return result
//}
//
//print(evenNumbersToArrayVer3(arr: array1))

//ver4

//func evenNumbersToArrayVer4(arr: [Int]) -> [Int] {
//    if !arr.isEmpty {
//        let result: [Int] = arr.filter({ $0 % 2 == 0 })
//        return result
//    }
//    return []
//}
//
//print(evenNumbersToArrayVer4(arr: array1))

//ver5

func evenNumbersToArrayVer5(arr: [Int]) -> [Int] {
    arr.isEmpty ? [] : arr.filter({ $0 % 2 == 0 })
}

print(evenNumbersToArrayVer5(arr: array1))


// map

let names: [String] = ["Anna", "Pavel", "Anton", "Nikita", "Viktor"]
let numbers: [Int] = [1,2,3,4,5,6,7]

let namesLengts = names.map { name in
    " В имени \(name) - \(name.count) букв"
}
print(namesLengts)

let namesUpperCase = names.map { $0.uppercased() }
print(namesUpperCase)

let numbersForString = numbers.map { "\($0)" }
print(numbersForString)


//filter

let numbersFilter = numbers.filter({ $0 % 2 == 0 })
print(numbersFilter)

let namesFilterForLenght = names.filter({ $0.count <= 5})
print(namesFilterForLenght)

let numbersFilter2 = numbers.filter({ $0 > 5 })
print(numbersFilter2)


//compactMap

let numbersPlusNil: [Int?] = [11,3,5,nil,nil,2,3,nil,7,8]

let numbersFinal = numbersPlusNil.compactMap({ $0 })
print(numbersFinal)

let numbersPlusNilForString = numbersPlusNil.compactMap({ $0 }).compactMap({ String($0) })
print(numbersPlusNilForString)


// sort

var namesSort: [String] = ["Anna", "Pavel", "Anton", "Nikita", "Viktor"]

namesSort.sort()
print(namesSort)

namesSort.sort(by: { $0 > $1 })
print(namesSort)


//sorted

var numbersSorted: [Int] = [1,4,6,7,2,3,5,8,9,0,10]

var sortedNumbers: [Int] = numbersSorted.sorted(by: >)
print(sortedNumbers)

var sortedNumbers2: [Int] = numbersSorted.sorted(by: <)
print(sortedNumbers2)
