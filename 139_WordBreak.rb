# @param {String} s
# @param {Set<String>} word_dict
# @return {Boolean}
def word_break(s, word_dict)
    tmp = Hash.new(false)
    def search(remain, tmp, word_dict)
        if !remain.nil? && !remain.empty? 
            l = remain.length 
        else 
            return true
        end
        if tmp.include?(remain)
            return tmp[remain]
        end
        for i in 0..l
            if word_dict.include?(remain[0..i]) and search(remain[i+1..-1],tmp, word_dict)
                tmp[remain]=true
                return true
            end
        end
        tmp[remain] = false
        return false
    end
    search(s,tmp, word_dict)
end
