class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var valToIdxTracker = [Int: Int]()
        for (idx, num) in nums.enumerated() {
            let requiredNum = target - num
            if let requiredNumIdx = valToIdxTracker[requiredNum] {
                return [requiredNumIdx, idx]
            } else {
                valToIdxTracker[num] = idx
            }
        }
        return [-1, -1]
    }
}
