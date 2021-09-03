def first_anagram?(str1, str2)
    anagrams(str1).include?(str2)
end

def anagrams(str)
    str.split("").permutation.to_a.map {|word| word.join("")}
end


# O(n!) - time 
# O(n!) - space


def second_anagrams?(str1, str2)
    counter = 0

    str1.chars.to_a.each do |char| #n 
        del_idx = str2.split('').find_index(char)
        unless del_idx.nil?
            str2.split('').delete_at(del_idx) #n
            counter += 1
        end
    end

    counter == str2.length

end

# O(n^2) - Time
# O(n) - Space



def third_anagram?(str1, str2)
    str1.split('').sort == str2.split('').sort
end

# O(n^2) - Time 
# O(log(n)) - Space

def fourth_anagram?(str1, str2)
    counter_1 = Hash.new(0)
    counter_2 = Hash.new(0)

    str1.each_char { |letter| counter_1[letter] += 1 }
    str2.each_char { |letter| counter_2[letter] += 1 }

    counter_1 == counter_2
end

# O(n) - Time 
# O(n) - Space

p third_anagram?("elvis", "lives")
p second_anagrams?("elvis", "lives")
# puts '----'

# p second_anagrams?('conversationalists', 'conservationalists')

p third_anagram?('conversationalists', 'conservationalists')
# puts '----'
# p second_anagrams?('hydroxydeoxycorticosterones', 'hydroxydesoxycorticosterone')

p third_anagram?('hydroxydeoxycorticosterones', 'hydroxydesoxycorticosterone')

# p second_anagrams?("elvis", "lives")    #=> true
p third_anagram?("gizmo", "sally")    #=> false