def first_anagram?(str1, str2)
anagrams(str1).include?(str2)

end


def anagrams(str)
str.split("").permutation.to_a.map {|word| word.join("")}
end


def second_anagrams?()
