# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# Strategy:  
# 1) Convert hash into value array using .values method.
# 2) Find length of values array using .length method.
# 3) Iterate through values array using each an i & i+1.  Whichever value is least, save it to a variable.
# 4) Use .key method to return the key for the value stored in the variable.

def key_for_min_value(name_hash)
  # if name_hash.length > 0
  lowest_key = nil
  lowest_value = nil
  name_hash.each do |the_key, the_value|
    if the_value < lowest_value || lowest_value == nil
    lowest_value = the_value
    lowest_key = the_key
    end
  end
  lowest_key
end