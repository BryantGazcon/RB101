def hacker_speak(str)
	str.gsub('a', '4').gsub('e', '3').gsub('i', '1').gsub('o', '0').gsub('s', '5')
end

p hacker_speak("javascript is cool")

# Another simpler way is to use tr method to replace all specified characters with
# their specific number

def hacker_speaker(str)
  str.tr('aeios','43105')
end

p hacker_speaker("javascript is cool")
#=>"j4v45cr1pt 15 c00l"