class Solution {
    func findAllPeople(_ n: Int, _ meetings: [[Int]], _ firstPerson: Int) -> [Int] {
        var knowSecret = Set([0, firstPerson])
        let meetings = meetings.sorted { $0[2] < $1[2] }
        var currentMin = 0
        var speakMap = [Int:[Int]]()
        var learnedThisMinute = Set<Int>()
        for meeting in meetings {
            let person1 = meeting[0]
            let person2 = meeting[1]
            let time = meeting[2]
            if time == currentMin {
                speakMap[person1, default:[]].append(person2)
                speakMap[person2, default:[]].append(person1)
            } else {
                if !learnedThisMinute.isEmpty {
                    checkMinArray()
                }
                currentMin = time
                speakMap = [:]
                speakMap[person1, default:[]].append(person2)
                speakMap[person2, default:[]].append(person1)
                learnedThisMinute = []
            }
            let person1HasSecret = knowSecret.contains(person1)
            let person2HasSecret = knowSecret.contains(person2)
            if person1HasSecret == person2HasSecret { continue }
            if person1HasSecret {
                knowSecret.insert(person2)
                learnedThisMinute.insert(person2)
            } else {
                knowSecret.insert(person1)
                learnedThisMinute.insert(person1)
            }
        }

        if !learnedThisMinute.isEmpty {
            checkMinArray()
        }

        func checkMinArray() {
            var current = learnedThisMinute
            while !current.isEmpty {
                var nextRound = Set<Int>()
                for person in current {
                    if let others = speakMap[person] {
                        for other in others {
                            if learnedThisMinute.contains(other) { continue }
                            knowSecret.insert(other)
                            nextRound.insert(other)
                            learnedThisMinute.insert(other)
                        }
                    }
                }

                current = nextRound
            }
        }
        

        return Array(knowSecret)
    }
}
