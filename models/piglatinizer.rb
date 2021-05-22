class PigLatinizer
    def piglatinize(input_word)
        input_word.split(" ").map {|word| pig_word(word)}.join(" ")
    end

    def vowel?(letter)
        letter.match(/[aeiouAEIOU]/)
    end

    def pig_word(word)
        if vowel?(word[0])
            word << "way"
        else
            vowel_index = word.index(/[aeiouAEIOU]/)
            const = word.slice(0...vowel_index)
            leftovers = word.slice(vowel_index..word.length-1)

            leftovers + const + "ay"
        end
    end
end