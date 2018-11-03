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

## Method 2: not assuming everything in order
def can_construct(ransom_note, magazine)
  mag_pointer = 0
  letter_counts = {}
  # count the letters in the magazine
  while mag_pointer < magazine.length
      letter = magazine[mag_pointer]
      letter_counts[letter] = 0 unless letter_counts[letter]
      letter_counts[letter] += 1
      mag_pointer += 1
  end

  # go through letters in ransom_note and decrement its corresponding count
  # short-circuit if do not have enough letters
  ransom_pointer = 0
  while ransom_pointer < ransom_note.length
    letter = ransom_note[ransom_pointer]
    mag_letter = letter_counts[letter]
    return false unless mag_letter && mag_letter > 0
    letter_counts[letter] -= 1
    ransom_pointer += 1
  end

  true
end

wd = 'aaaabbbbbcccccdeeeefff'
letters = 'aaaaaabbccdeeeeeef'
p can_construct(wd, letters)
wd = 'abcdf'
letters = 'cbdfffa'
p can_construct(wd, letters)
