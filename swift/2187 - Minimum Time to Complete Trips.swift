class Solution {
  func minimumTime(_ time: [Int], _ totalTrips: Int) -> Int {    
    let longestTime = time.max() ?? 0    
    var minTime = 0
    var low = 1
    var high = longestTime * totalTrips

    while low <= high {
        let mid = low + (high-low)/2
        if isValid(mid, for: time, totalTrips: totalTrips) {
            minTime = mid
            high = mid-1
        } else {
            low = mid + 1
        }
    }

    return minTime
  }

  private func isValid(_ time: Int, for times: [Int], totalTrips: Int) -> Bool {
      var trips = 0
      for travelTime in times {
          trips += time / travelTime
          if trips >= totalTrips {
              return true
          }
      }

      return false
  }

}

