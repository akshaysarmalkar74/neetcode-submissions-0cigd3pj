class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var sCharFreq = [Character: Int]()

        for char in s {
            sCharFreq[char] = sCharFreq[char, default: 0] + 1
        }

        for char in t {
            if let curCount = sCharFreq[char], curCount > 0 {
                sCharFreq[char] = curCount - 1
            } else {
                return false
            }
        }

        return true
    }
}
