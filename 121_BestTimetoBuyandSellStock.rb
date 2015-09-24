# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    if prices.empty? or prices.nil?
        return 0
    end
    fit = 0
    minp = prices[0]
    prices.each{|x| minp=[minp,x].min; fit=[fit,x-minp].max}
    return fit
end
