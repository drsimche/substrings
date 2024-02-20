def substrings(word, dictionary)
    word = word.downcase
    result = Hash.new(0)
    dictionary.each do |substring|
        appearances = word.scan(substring.downcase).length
        result[substring] += appearances if appearances > 0
    end
    result
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
word = "Howdy partner, sit down! How's it going?"
puts substrings(word, dictionary)