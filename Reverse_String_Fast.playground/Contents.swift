import UIKit

import UIKit

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}

func reverseString(input: String) -> String  {
    var max = input.count
    var resultString = ""
    while max != 0 {
        let char = input[max - 1]
        resultString += (String(char))
        max -= 1
    }
    return resultString
}


func reverseStringSlow(input: String) -> String {
    var array: [String] = []
    for char in input {
        array.insert(String(char), at: 0)
    }
    return array.joined()
}

//
let stringInput = "Hellosadasdasdasdasdasdasdasdasdsadasdasdasdashdkasdhaksdjhaskdhaskdjhaskdjhaskjdhaskdjahsdkashdkjashdkashdkashdkashdaskjdhaskdhaskdhaskdjasdhaskjdhaskdasdksajdhksajhdaskdjhaskdhsakdjsahdkajshdkasjdhaskdjsahdkjasgasgdasydo1y124125125sdasd215097210sauf0129470a9sud0a9sduas90duas90fyas0g7901274012740a9sfas08das0d8as0d971204912740127409asd80as9d8as0d7120497120492174097as0d7as0d97124091275012976021967210957120497210412740217402142512597210da9sud017240120saj0fs0971204912750219750125812-94812-40124-82104-2715-912rasldjasdlkasduo91274091257091257120512ur09uwrlawjr12997401256921lkasflaskf01795012512541209470127502157120952lkjasldkjaslkdu129412075120671-260182-alksjfaslkj-2195-125912-5lsakfjaslfjasljaslfksafu9021750129710296710296lkhsflasjflskafj1290571290572150912571209askjhdaskfhsaf124214124512901258902158192058210521850129750127521094721094712407124901274021947120497124091257125621598124721kjashfksajfhaskfjhasfjhasfasfasfsasagsg41249012740124712047120497124092174021740124710247102471204721906126lfhaskfhaskjfgaskjghaskjghaskjghasdlashdlaskdsahfk;alshgaskhfpiasydpi21u0912alsjhdasldkhaslkdhaslghaslfkhasdaskdhaslkgasr9p120sadasdsaflksahglkasghlashflaskdhaslkdhsalkdaslkdjasldkhp2140129ajskdhaskjdhaskdjhaskdjashdkjashdkjashdkjashkgasfuy120e1023jkhasdkashdkasjdhaskdjhaskjgsalfhasdjsadsadsadsaasdfasifhsaihgasioghasoghsaigohsaogiashfoiashoif12740912740912jasjhdaksdjhaskjdhsakjdhaskdhsakdhaskdjhaskdjashkdjashdkjashdasjkdhaskd0124710249124kgjahskfsahdksajdhksajdhaskjdhaskdjhaskjdhsadkjashdkasdasdasdasdasdaskgaslkfhl12k4lkjasldkasjdlkasjdlkasjglaskhglkasghaslkghaslgkhaslgkashglkashglksaghslakghsalkghaslkghaslgkahsglkashflakshdfasofihasofiashfoiashfoashfoashfoasfisahfoi1oiasoiduasodiausdoiasdhoasdhasdasdasd"

let timer = ParkBenchTimer()


reverseString(input: stringInput)
print(timer.stop())

extension String {
    func reverseReduce() -> String  { return self.reduce("") { "\($1)" + $0 } }
}

//reverseStringSlow(input: stringInput)
//print(timer.stop())

//stringInput.reverseReduce()
//print(timer.stop())

//stringInput.reversed()
//print(timer.stop())
