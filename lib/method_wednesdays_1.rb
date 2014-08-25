def find_ascii_of(val)
  @numero = []                        # => []
  val.each_byte { |x| @numero << x }  # => "Hello!"
  return @numero                      # => [72, 101, 108, 108, 111, 33]
end

def convert
  @numero.map! do |x|        # => [72, 101, 108, 108, 111, 33]
    if (97..122).include? x  # => false, true, true, true, true, false
      (x - 32).chr           # => "E", "L", "L", "O"
    else
      x.chr                  # => "H", "!"
    end                      # => "H", "E", "L", "L", "O", "!"
  end                        # => ["H", "E", "L", "L", "O", "!"]
  @numero.join               # => "HELLO!"
end

def uppercasing(string)
  find_ascii_of(string)  # => [72, 101, 108, 108, 111, 33]
  convert                # => "HELLO!"
end


uppercasing('Hello!')  # => "HELLO!"
