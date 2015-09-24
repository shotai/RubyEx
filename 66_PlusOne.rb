# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    tmp = (digits.map!{|x| x.to_s}.join.to_i) +1
    tmp2 = tmp.to_s.split("").map!{|x| x.to_i}
    return tmp2
end
