require "byebug"


def my_min_v1(arr)
    # variable for output 
    # enumerable w conditions comparing idexes 

    min = arr.first

    # debugger
    arr.each do |num1|
        dup_arr = arr.dup
        dup_arr.delete(num1)
        min = num1 if dup_arr.all?{|ele| ele > num1}
        
        # min < num1 ? min : min = num1
    end

    min
end


def my_min_v2(arr)
    #debugger
    arr.inject do |acc, ele| 
        ele < acc ? ele : acc
    end

end

def lgsv1(arr) 

    subarrays = []
    arr.each_index do |i1|
        (i1...arr.length).each do |i2|
            subarrays << arr[i1..i2]
        end
    end

    sums = subarrays.map do |sub|
                sub.inject do |acc, ele|
            acc + ele
        end
    end
    sums.max
end


def lgsv2(arr)
    largest_sum = arr.first

    current_sum = arr.first
    (1...arr.length).each do |i|
        if arr[i] < 0
            current_sum = 0
        end
        current_sum += arr[i]
        if current_sum > largest_sum
            largest_sum = current_sum           
        end
    end
    largest_sum
end





