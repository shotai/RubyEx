# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    dic1 = Hash.new(0)
    dic2 = Hash.new(0)
    s.each_char{|x| dic1[x] = dic1[x]+1}
    t.each_char{|x| dic2[x] = dic2[x]+1}
    return dic1==dic2

end
