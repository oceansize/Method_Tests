describe 'Hash' do

  context 'DELETE:' do
    it 'Deletes key value pair' do
      smash = {a: "a"}
      smash.delete(:a)
      expect(smash).to_not have_key(:a)
    end
  end

  context 'EACH:' do
    it 'Calls a block of code, using a choice of key and/or value as arguments' do
      def hashing_each
        mash = {a: "a", b: "b"}
        mash.each{|element| puts "#{element}"}
      end
      expect(hashing_each).to include :a => "z"
    end
  end

  # context 'EACH_KEY:' do
  #   it 'Deletes key value pair' do
  #     smash = {a: "a"}
  #     smash.each_key {|key| mouth = key}
  #     expect(smash).to_not have_key(:a)
  #   end
  # end

end