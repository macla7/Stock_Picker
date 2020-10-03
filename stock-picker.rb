require 'pry'
arr = [20,17,3,6,2,9,15,8,6,3,18,1,10,1]

puts arr.length
def stock_picker(arr)
    a = 0
    bestBuy = 0
    bestSell = 0
    profitLast = 0
    j = 0
    while j<(arr.length)
        stock = arr[j]
        i=j
        while i>0
            a = arr[i-1]
            if (stock-a)>profitLast
                profitLast = (stock-a)
                bestBuy = a
                bestSell = stock
            end
            i -=1
        end
        j+=1
    end
    newArr = [bestBuy, bestSell]
end

p stock_picker(arr)
