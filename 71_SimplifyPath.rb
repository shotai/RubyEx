# @param {String} path

# @return {String}

def simplify_path(path)

    paths = path.split("/")

    curr = "/"

    if paths.nil? && paths.empty? 

        return "/"

    end

    l = paths.length    

    for i in 0..l-1

        n = paths[i]

        if n == ".."

            if curr != "/"

                tmp = curr.split('/') [0..-2]

                curr = tmp.join("/")

                if curr == ""

                    curr = "/"

                end

            end

        elsif n != "." and n !=''

            if curr != "/"

                curr = curr+ "/"+n

            else

                curr = curr+n

            end

        end

    end

    return curr

end
