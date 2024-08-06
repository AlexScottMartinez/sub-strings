def substrings(text, dictionary)
  # Creating a new hash which will store the result which will be displayed
  result = Hash.new(0)
  # Duplicate `text` arguement, but this variable will make the string all lowercase letters
  text_lowercase = text.downcase

  # iterate through each word in the dictionary
  dictionary.each do |word|
    # if the `text_lowercase` and `word` are the same, then that will return an array with the word appearing x amount of times.
    #    Then with the .length method, it will count the amount of times the text appears in the given dictionary and apply
    #    it to `matches` variable
    matches = text_lowercase.scan(word).length
    # populate the `result` hash with the dictionary word with the amount of times it appears in the given text. Only if,
    #    the number of matches is greater than 0.
    result[word] = matches unless matches == 0
  end
  return result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
