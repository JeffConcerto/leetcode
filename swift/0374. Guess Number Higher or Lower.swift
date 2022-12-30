/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var lower = 1
        var upper = n

        while true {
            let myGuess = (lower + upper) / 2
            let result = guess(myGuess)

            guard result != 0 else { return myGuess }

            if result == -1 {
                upper = myGuess-1
            } else {
                lower = myGuess + 1
            }     

        }

        return -1
    }
}
