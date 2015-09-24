# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    tmp = (digits.collect!{|x| x.to_s}.join.to_i) +1
    tmp2 = tmp.to_s.split("").collect!{|x| x.to_i}
    return tmp2
end
