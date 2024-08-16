class Solution {
    func finalPositionOfSnake(_ n: Int, _ commands: [String]) -> Int {
        var cell = 0

        for command in commands {
            switch command {
                case "UP":
                cell -= n
                case "DOWN":
                cell += n
                case "LEFT":
                cell -= 1
                case "RIGHT":
                cell += 1
                default:
                    break
            }
        }

        return cell
    }
}
