/**
 * Forward declaration of guess API.
 * @param  num   your guess
 * @return       -1 if num is higher than the picked number
 *                1 if num is lower than the picked number
 *               otherwise return 0
 * func guess(_ num: Int) -> Int
 */

class Solution: GuessGame {
  func guessNumber(_ n: Int) -> Int {
    var left = 1
    var right = n

    while left <= right {
      let midVal = left + ((right - left) / 2)
      let guessAPIRes = guess(midVal)
      if guessAPIRes == 0 {
        return midVal
      } else if guessAPIRes == 1 {
        left = midVal + 1
      } else {
        right = midVal - 1
      }
    }

    return left  // Won’t run
  }
}
