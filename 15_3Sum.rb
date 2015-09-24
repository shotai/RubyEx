# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    if nums.nil? or nums.empty?
        return []
    end
    res = Array.new
    nums.sort!
    for i in 0..nums.length-3
        j = i+1
        k = nums.length-1
        while j<k do
            tmp = nums[i]+nums[j]+nums[k]
            if tmp==0
                res.push([nums[i],nums[j],nums[k]])
            end
            if tmp>0
                k = k-1
            else
                j +=1
            end
        end
    end
    return res.uniq
end
