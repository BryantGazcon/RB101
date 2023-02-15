GUEST_LIST = {
	"Randy" => "Germany", 
	"Karla" => "France", 
	"Wendy" => "Japan", 
	"Norman" => "England", 
	"Sam" => "Argentina"
}

def greeting(name)
value = GUEST_LIST.fetch(name, "Hi! I'm a guest.")
return value if !GUEST_LIST.key?(name)
return "Hi! I'm #{name}, and I'm from #{value}." if GUEST_LIST.key?(name)
end

p greeting("Randy")