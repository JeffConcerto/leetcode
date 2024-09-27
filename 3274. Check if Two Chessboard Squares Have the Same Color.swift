class Solution {
    func checkTwoChessboards(_ coordinate1: String, _ coordinate2: String) -> Bool {
        let letterMap = ["a":0, "b": 1, "c": 0, "d":1, "e": 0, "f": 1, "g":0, "h":1]
        let co1 = Array(coordinate1)
        let co2 = Array(coordinate2)
        let letter1Val = letterMap[String(co1[0])]!
        let letter2Val = letterMap[String(co2[0])]!
        let num1Val = String(co1[1]).integerValue
        let num2Val = String(co2[1]).integerValue

        var co1IsBlack = false
        if letter1Val == 0 {
            co1IsBlack = num1Val % 2 == 1
        } else {
            co1IsBlack = num1Val % 2 == 0
        }
        var co2IsBlack = false
        if letter2Val == 0 {
            co2IsBlack = num2Val % 2 == 1
        } else {
            co2IsBlack = num2Val % 2 == 0
        }

        return co1IsBlack == co2IsBlack

    }
}
