require 'pry'

class PigLatinizer

  attr_reader :words

  def initialize
    @words = self.to_s
  end

  def start_with_vowel(word1)

  first_letter = word1[0].downcase
  #binding.pry
  array_mo = first_letter.scan(/[aeoui]/)
  if array_mo.empty?
    false
  else
    true
  end
end

def start_with_double_cons(word1)
word1 = word1.downcase
first_letter = word1[0]
second_letter = word1[1]



array_first = first_letter.scan(/[bcdfghjklmnpqrstvwxyz]/)
if second_letter
array_second = second_letter.scan(/[bcdfghjklmnpqrstvwxyz]/)
end
if array_first.empty? || array_second.empty?
  false
else
  true
end

end

def start_with_triple_cons(word1)
word1 = word1.downcase
first_letter = word1[0]
second_letter = word1[1]
third_letter = word1[2]

array_first = first_letter.scan(/[bcdfghjklmnpqrstvwxyz]/)
if second_letter
array_second = second_letter.scan(/[bcdfghjklmnpqrstvwxyz]/)
end
if third_letter
array_third = third_letter.scan(/[bcdfghjklmnpqrstvwxyz]/)
end

if array_first.empty? || array_second.empty? || array_third.empty?
  false
else
  true
end

end

def start_with_cons(word1)
word1
first_letter = word1[0].downcase

array_mo = first_letter.scan(/[bcdfghjklmnpqrstvwxyz]/)

if array_mo.empty?
  false
else
  true
end

end

def latinator(word)
    word_re = word
    first_letter = word[0]

if start_with_triple_cons(word)

  second_letter = word[1]
  third_letter = word[2]
  word.slice!(0)
  word.slice!(0)
  word.slice!(0)
  newline = "#{word}"+"#{first_letter}"+"#{second_letter}"+"#{third_letter}"+"ay"
elsif start_with_double_cons(word)

    second_letter = word[1]
    word.slice!(0)
          #binding.pry
    word.slice!(0)

    newline = "#{word}"+"#{first_letter}"+"#{second_letter}"+"ay"
  elsif start_with_cons(word)
    word
    word.slice!(0)
    newline = "#{word}"+"#{first_letter}"+"ay"
    #binding.pry
  elsif start_with_vowel(word)
      newline = "#{word}"+"way"

  end

end

def piglatinize(string1)
  words_array = []
  words_array = string1.split(" ")
  #binding.pry
words_new_array= words_array.map do |word1|
    #binding.pry
    latinator(word1)
  end
  words_new_array.join(" ")
end

end
