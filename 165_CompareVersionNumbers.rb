# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
    v1 = version1.split(".")
    v2 = version2.split(".")
    l = [v1.length, v2.length].max
    for i in 0..l-1
        t1= t2= 0
        if i <v1.length
            t1 = v1[i].to_i
        end
        if i <v2.length
            t2 = v2[i].to_i
        end
        if t1>t2
            return 1
        elsif t1<t2
            return -1
        end
    end
    return 0
end
