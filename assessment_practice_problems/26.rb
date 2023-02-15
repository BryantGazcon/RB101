def is_valid(zip_code)
  zip_code.length == 5 ? zip_code.to_i.to_s == zip_code : false
end


p is_valid("732327")