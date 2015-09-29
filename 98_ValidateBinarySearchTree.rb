# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root)
    def helper(node, mi, ma)
        if node.nil? 
            return true
        end
        if node::val>=ma || node::val <=mi 
            return false
        end
        return helper(node::right, node::val, ma) && helper(node::left, mi, node::val)
    end
    return helper(root, -Float::INFINITY, Float::INFINITY)
end
