class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        let sBackspaced = String(createStack(for: s))
        let tBackspaced = String(createStack(for: t))

        return sBackspaced == tBackspaced
    }

    private func createStack(for string: String) -> [Character] {
        var stack = [Character]()

        for char in string {
            if char == "#" {
                if !stack.isEmpty {
                    stack.removeLast()
                }
            } else {
                stack.append(char)
            }
        }

        return stack
    }
}
