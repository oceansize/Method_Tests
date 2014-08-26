describe 'Hash' do

  let(:smash) { {a: "a", b: "b"} }

  context 'DELETE:' do
    it 'Deletes key value pair' do
      smash.delete(:a)
      expect(smash).to_not have_key(:a)
    end
  end

  context 'EACH:' do
    it 'Calls a block of code, using a choice of key and/or value as arguments' do
      def hashing_each
        smash.each{|element| puts "#{element}"}
      end
      expect(hashing_each).to include :a => "a"
    end
  end

  context 'FLATTEN:' do
    it 'Returns a one-dimensional array which is a flattened version of the source hash ' do
      expect(smash.flatten).to eq [:a,"a",:b,"b"]
    end
  end

end