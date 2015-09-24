# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    def helper(s,e, nums)
        while s<e do
            nums[s], nums[e] = nums[e], nums[s]
            s+=1
            e-=1
        end
    end
    l = nums.length
    if l ==0
        return
    end
    k %= l
    helper(0, l-1-k,nums)
    helper(l-k, l-1,nums)
    helper(0, l-1, nums)
end
