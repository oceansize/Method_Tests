describe 'Array' do

  context 'APPEND (<<):' do
    it 'Adds a number or array to the end of an existing array (can also access multidimensional arrays)' do
      arr = [1,2,3,4,5,6,[7,8,9],10]
      arr[6] << 99
      expect(arr[6][3]).to eq 99
    end
  end

  context 'COUNT:' do
    it 'Counts the number of elements in an array' do
      arr = [1,2,3,4,5,6]
      expect(arr.count).to eq 6
      # The flatten method allows all arrays within to be included in the count
      arr_2 = [1,2,3,4,5,6,[7,8,9],10]
      expect(arr_2.flatten.count).to eq 10
    end
  end

end