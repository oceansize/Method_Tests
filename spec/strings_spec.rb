require 'strings'

# str << integer → str
# str << obj → str
# Append—Concatenates the given object to str. If the object is a Integer, it is considered as a codepoint, and is converted to a character before concatenation.
describe 'Strings' do

  context 'APPEND:' do
    it 'adds characters to the end of a string' do
      expect("String" << "s").to eq "Strings"
    end
  end

  context 'CAPITALIZE:' do
    it 'Converts a string to title case' do
      expect("sTRINGS".capitalize).to eq "Strings"
    end
  end

  # context 'CENTER:' do
  #   it 'Centers a string within a specified character range & can add a repeating character' do
  #     expect("STRINGS".center(' 60 ','-').to eq "Strings"
  #   end
  # end
  context 'CHAR:' do
    it 'Splits a string into an array of individual characters' do
      expect("Strings".chars).to eq ["S", "t", "r", "i", "n", "g", "s"]
    end
  end

  context 'DELETE:' do
    it 'removes all matching character(s) from a string' do
      expect("Californicationcali".delete('cali')).to eq "Cfornton"
    end
  end

  context 'DOWNCASE:' do
    it 'Changes all characters in a string to lowercase' do
      expect("LOUD NOISES".downcase).to eq "loud noises"
    end
  end

  context 'END_WITH?:' do
    it 'Checks whether string ends with specified character(s)' do
      expect("my@email.com".end_with?('.com')).to be_true
    end
  end

  context 'START_WITH?:' do
    it 'Checks whether string starts with specified character(s)' do
      expect("my@email.com".start_with?('my')).to be_true
    end
  end

  context 'GSUB' do
    it 'Substitutes character(s) specified' do
      expect("hello".gsub('l','r')).to eq 'herro'
    end
  end

  context 'HASH' do
    it 'Converts a string into a randomly-generated number' do
      expect("hello".hash.class).to_not eq String
    end
  end

  context 'HASH' do
    it 'Converts a string into a randomly-generated number' do
      expect("hello".hash.class).to_not eq String
    end
  end
end





=begin
capitalize → new_str
Returns a copy of str with the first character converted to uppercase and the remainder to lowercase. Note: case conversion is effective only in ASCII region.


  center(width, padstr=' ') → new_str
Centers str in width. If width is greater than the length of str, returns a new String of length width with str centered and padded with padstr; otherwise, returns str.

"hello".center(4)         #=> "hello"
"hello".center(20)        #=> "       hello        "
"hello".center(20, '123') #=> "1231231hello12312312"

chars → an_array
Returns an array of characters in str. This is a shorthand for str.each_char.to_a.

If a block is given, which is a deprecated form, works the same as each_char.


=end