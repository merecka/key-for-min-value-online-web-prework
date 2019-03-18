# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# This is an example of short-circut evaluation error. This code will not work because the lowest_value == nil must be placed before the the_value < lowest_value due to short-circut evaluation.
# https://stackoverflow.com/questions/32109701/comparison-of-fixnum-with-nil-failed-value-not-nil

# def key_for_min_value(name_hash)
# lowest_key = nil
# lowest_value = nil
# name_hash.each do |the_key, the_value|
#   if (the_value < lowest_value) || (lowest_value == nil)
#   lowest_value = the_value
#   lowest_key = the_key
#   end
# end
#  lowest_key
# end


def key_for_min_value(name_hash)
  lowest_key = nil
  lowest_value = nil
  name_hash.each do |the_key, the_value|
    if (the_value < lowest_value) || (lowest_value == nil)
    lowest_value = the_value
    lowest_key = the_key
    end
  end
  lowest_key
end