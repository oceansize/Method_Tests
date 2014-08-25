require 'method_wednesdays_1'

describe 'Rewriting Upcase' do

  context 'requires the ability to' do
    xit 'identify a character\s ascii value' do
      string = 'a'
      expect(find_ascii_of(string)[0]).to eq 97
    end

    xit 'convert an ascii value to a character' do
      expect(uppercasing('a')).to eq 'a'
    end

  end



end