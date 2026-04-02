class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            let midIdx = left + ((right - left) / 2)
            let midVal = nums[midIdx]

            if midVal == target {
                return midIdx
            } else if midVal < target {
                left = midIdx + 1
            } else {
                right = midIdx - 1
            }
        }

        return -1
    }
}
