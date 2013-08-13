def combine_anagrams(words)
  h = Hash.new
  words.each_index do |i|
    sorted = words.at(i).downcase.chars.sort.join 
    unless h.has_key?(sorted)
      h[sorted] = Array.new
    end
  h.fetch(sorted).push(words.at(i)) 
  end
  result = Array.new
  h.each_value { |value| result.push(value) }
  result
end
