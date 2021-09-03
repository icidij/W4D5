def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |ele1, i|
        arr.each_with_index {|ele2, j| return true if (ele1 + ele2 == target_sum) && (i > j)}
    end
    false

end


def okay_two_sum(arr, target_sum)
    array = arr.sort
    
end
