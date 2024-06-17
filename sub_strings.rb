dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(str, dictionary)
    downcase_str = str.downcase
    result = Hash.new(0)

    dictionary.each do |word|
        match = downcase_str.scan(word).length
        if match > 0 then
            result[word] = match
        end
    end
    result
end

puts sub_strings("Howdy partner, sit down! How's it going?", dictionary)