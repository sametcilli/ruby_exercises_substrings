
def substrings(str, dictionary)
  str.downcase!
  dictionary_hash = Hash.new
  dictionary_hash.default = 0
  dictionary.map.with_index{|v,i| 
    dictionary_hash[v] = dictionary_hash[v] = str.scan(v).count
  }
  dictionary_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
