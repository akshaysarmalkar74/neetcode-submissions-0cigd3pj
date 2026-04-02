class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var result = nums
        result.append(contentsOf: nums)
        return result
    }
}
