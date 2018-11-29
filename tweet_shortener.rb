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

  #iterate over words
  tweet_array.collect do |word|
    if dictionary.keys.include?(word)
      
    else
      word
    end
  end
end
