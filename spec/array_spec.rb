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

  context 'DELETE:' do
    it 'Deletes an element of an array based on it\'s content' do
      # NB - NOT index-based
      array = ["cat","dog","monkey","giraffe","elephant","squirrel"]
      array.delete("dog")
      expect(array).to eq ["cat", "monkey", "giraffe", "elephant", "squirrel"]
    end
  end

  context 'DELETE_AT:' do
    it 'Deletes an element of an array based on it\'s index' do
      array = ["cat","dog","monkey","giraffe","elephant","squirrel"]
      array.delete_at(1)
      expect(array).to eq ["cat", "monkey", "giraffe", "elephant", "squirrel"]
    end
  end

  context 'DELETE_IF:' do
    it 'Deletes elements of an array based on the conditions within a block' do
      array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      array.delete_if { |number| number > 5 }
      expect(array).to eq [1, 2, 3, 4, 5]
    end
  end

  context 'EACH:' do
    it 'Executes a block on each element of an array' do
      array = [1, 2, 3, 4, 5, 6]
      update = 0
      array.each { |elem| update +=  1 }
      expect(update).to eq 6
    end
  end

  context 'EACH_INDEX:' do
    it 'Executes a block on each index of an array' do
      array = [1, 2, 3, 4, 5, 6]
      update = 0
      array.each_index { |index| update = index }
      expect(update).to eq 5
    end
  end

  context 'EMPTY?:' do
    it 'Tests to see if an array is empty' do
      array = [1, 2, 3, 4, 5, 6]
      expect(array.empty?).to be_false
      array_2 = []
      expect(array_2.empty?).to be_true
    end
  end

  context 'FLATTEN:' do
      it 'Flattens a multidimensional array, to a single array' do
        array = [1, 2, 3, [4, [9,2,5,7], 5], 6]
        expect(array.flatten).to  eq [1, 2, 3, 4, 9, 2, 5, 7, 5, 6]
      end
    end

  context 'FIND_INDEX:' do
    it 'Returns the index number of an element in an array, based on that element\'s value' do
      array = ["cat","dog","human"]
      expect(array.find_index("human")).to eq 2
    end
  end

  context 'INCLUDE?:' do
      it 'Flattens a multidimensional array, to a single array' do
      array = ["cat","dog","human"]
      expect(array.include?("dog")).to be_true
      expect(array.include?("robot")).to be_false
    end
  end

  context 'JOIN:' do
    it 'Collapses an array into a string (with optional argument to supply spacing characters)' do
      array = ["cat","dog","human"]
      expect(array.join).to eq "catdoghuman"
      expect(array.join('***')).to eq "cat***dog***human"
    end
  end

  context 'KEEP_IF:' do
    it 'Discards all elements of an array that evaluate false' do
      array = [1,2,3,4,5,6,7,8]
      array.keep_if { |element| element < 5}
      expect(array).to eq [1,2,3,4]
    end
  end

  context 'LAST:' do
    it 'Returns the last element of an array' do
      array = [1,2,3,4,5,6,7,8]
      expect(array.last).to eq 8
    end
  end

end