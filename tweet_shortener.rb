require 'pry'
# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to, two, too" => "2",
    "for, four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter (tweet)
  tweet_array = tweet.split(" ")
  binding.pry
  #iterate over words
  tweet_shortened_array = tweet_array.collect do |word|
    if dictionary.keys.include?(word)
      full_key = ""
      dictionary.each do |key, value|
        if key.include?(word)
          full_key = key
        end
      end
      dictionary[full_key]
    else
      word
    end
  end
  tweet_shortened_array.join(" ")
end
