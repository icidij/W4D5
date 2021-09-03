require "byebug"


def my_min_v1(arr)
    # variable for output 
    # enumerable w conditions comparing idexes 

    min = arr.first

    # debugger
    arr.each do |num1|
        min < num1 ? min : min = num1
    end

    min
end


def my_min_v2(arr)
    #debugger
    arr.inject do |acc, ele| 
        ele < acc ? ele : acc
    end

end


# p my_min_v1([ 0, 3, 5, 4, -5, 10, 1, 90 ])
p my_min_v2([ 0, 3, 5, 4, -5, 10, 1, 90 ])
