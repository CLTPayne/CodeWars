=begin

Create a method is_uppercase() to see whether the string is ALL CAPS.
For example:
Corner Cases
For simplicity, you will not be tested on the ability to handle corner cases
(e.g. "%*&#()%&^#" or similar strings containing alphabetical characters at all)
- an ALL CAPS (uppercase) string will simply be defined as one containing no
lowercase letters. Therefore, according to this definition, strings with no
alphabetical characters (like the one above) should return True.

=end

# My Solution
# Based on googling for a previous answer
class String
  def is_upcase?
    self == upcase
  end
end

# Other options:

class String
  def is_upcase?
    self.split("").each {|x| return false if x != x.upcase}
    true
  end
end

class String
# use the ternary operator to check the passed in string for upcase. 
  def is_upcase?
    self == self.upcase ? true : false
  end
end

class String
  def is_upcase?
    self.index(/[a-z]/).nil?
  end
end

class String
  def is_upcase?
    return self.upcase == self
  end
end

class String
  def is_upcase?
    scan(/[a-z]/).empty?
  end
end
