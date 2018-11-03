### Instructions:
#### Given an arbitrary ransome note in string and another string containers letters
#### write a function that will return true if the magazine can be used once in your note.


## Method 1: Assuming everything is in order
def can_construct(word, letters)
  word_pointer = 0
  letter_pointer = 0
  while word_pointer < word.length
    return false if letters[letter_pointer] > word[word_pointer]
    if letters[letter_pointer] < word[word_pointer]
      letter_pointer += 1
    end

    if letters[letter_pointer] == word[word_pointer]
       letter_pointer += 1
       word_pointer += 1
    end
  end

  true
end

wd = 'aaaabbbbbcccccdeeeefff'
letters = 'aaaaaabbccdeeeeeef'
p can_construct(wd, letters)

