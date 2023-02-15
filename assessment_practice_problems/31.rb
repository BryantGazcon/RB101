# Create a function that takes a sentence and turns every "i" into "wi" and "e" 
# into "we", and add "owo" at the end.
def owofied(sentence)
	sentence.gsub(/[ie]/, 'i' => 'wi', 'e' => 'we') + ' owo'
end

p owofied("Cause baby you're a firework")