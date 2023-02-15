# Given a string and a style character, return the newly formatted string. 
# Style characters are single letters that represent the different types of formatting.

def md_format(word, style)
  case style
  when 'b'  
    "**#{word}**"
  when 'i'  
    "_#{word}_"
  when 'c' 
    "`#{word}`"
  else 
    "~~#{word}~~"
  end
end

p md_format("Bold", "i")

# Alternate method
def md_format(word, style)
  f = {b: "**", i: "_", c: "`", s: "~~"}[style.to_sym]
  f + word + f
end

p md_format("BOLD", "b")