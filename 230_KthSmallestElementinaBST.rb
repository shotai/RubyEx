# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
    stack, ans = [root], []
    while not stack.empty? do
        node, visit = stack.pop
        if node 
            if visit 
                ans << node.val
                return ans[-1] if ans.length == k
            else 
                stack << node.right << [node,true] << node.left
            end
        end
    end
end

#learning from https://leetcode.com/discuss/43300/share-my-accepted-ruby-solution
