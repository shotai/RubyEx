# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
    def dfs(node, sum)
        if node::val==sum and node::left.nil? and node::right.nil?
            return true
        end
        if !node::left.nil? and dfs(node::left, sum-node::val)
            return true
        end
        if !node::right.nil? and dfs(node::right, sum-node::val)
            return true
        end
        return false
    end
    if root.nil?
        return false
    end
    return dfs(root, sum)
end
