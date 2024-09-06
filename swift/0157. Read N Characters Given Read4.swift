/**
 * The read4 API is defined in the parent class Reader4.
 *     func read4(_ buf4: inout [Character]) -> Int;
 */

class Solution : Reader4 {
	/**
     * @param buf Destination buffer
     * @param n   Number of characters to read
     * @return    The number of actual characters read
     */
    func read(_ buf: inout [Character], _ n: Int) -> Int {
        var lastRead = 4
        var totalRead = 0
        var currentBuffer: [Character] = Array(repeating: ".", count: 4)

        while totalRead < n && lastRead == 4 {
            lastRead = read4(&currentBuffer)
            for i in 0..<lastRead {
                buf[totalRead] = currentBuffer[i]
                totalRead += 1
                if totalRead == n { return totalRead}
            }
        }
        return totalRead
    }
}
