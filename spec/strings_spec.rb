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

  context 'GSUB:' do
    it 'Substitutes character(s) specified' do
      expect("hello".gsub('l','r')).to eq 'herro'
    end
  end

  context 'HASH:' do
    it 'Converts a string into a randomly-generated number' do
      expect("hello".hash.class).to_not eq String
    end
  end

  context 'EMPTY?:' do
    it 'Checks to see if a string is empty' do
      expect("hello".empty?).to be_false
    end
  end

  context 'LENGTH?:' do
    it 'Counts the number of characters in a string' do
      expect("hello".length).to eq 5
    end
  end

  context 'INCLUDE?:' do
    it 'Checks to see if string contains the specified character(s)' do
      expect("hello".include?('l')).to be_true
    end
  end

  context 'REVERSE:' do
    it 'Reverses the order of characters in a string' do
      expect("hello".reverse).to eq "olleh"
    end
  end

  context 'PREPEND:' do
    it 'Attaches specified characters to the start of a string' do
      expect("hello".prepend('c')).to eq "chello"
    end
  end

  context 'REPLACE:' do
    it 'Replaces everything in a given string with supplied argument' do
      expect("hello".replace"goodbye").to eq "goodbye"
    end
  end

  context 'SIZE:' do
    it 'Like "LENGTH", gives character count of a string, but will work with enumerators' do
      # http://batsov.com/articles/2014/02/17/the-elements-of-style-in-ruby-number-13-length-vs-size-vs-count/
      expect("hello".size).to eq 5
    end
  end

  context 'SLICE:' do
    it 'Retains a specified character or range from a string and discards everything else' do
      expect("why hello there sir".slice('hello')).to eq 'hello'
    end
  end

  context 'SPLIT:' do
    it 'Breaks up a string into an array based on the delimiter supplied (default is a single space character)' do
      expect("why hello there sir".split).to eq ["why", "hello", "there", "sir"]
    end
  end

  context 'TO_I:' do
    it 'Converts a numerical string into an integer' do
      expect("1234".to_i).to eq 1234
    end
  end

  context 'TO_SYM:' do
    it 'Converts a string into a symbol' do
      expect("golly".to_sym).to eq :golly
    end
  end

end