CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(str)
  str.chars.map do |char|
    CONSONANTS.include?(char) ? char * 2 : char 
  end.join
end

p double_consonants("July 4th")
