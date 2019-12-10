require 'spec_helper'

RSpec.describe BinaryTree, type: :model do
  describe 'sort_tree' do
    it 'sorts a shrinking (left only) array' do
      array = [5, 4, 3, 2, 1]
      expected = [1, 2, 3, 4, 5]
      expect(sort(array)).to eq expected
    end
    it 'sorts a right only (growing) array' do
      array = [1, 2, 3, 4, 5]
      expected = [1, 2, 3, 4, 5]
      expect(sort(array)).to eq expected
    end
    it 'sorts a mixed array' do
      array = [7, 4, 9, 1, 6, 14, 10]
      expected = [1, 4, 6, 7, 9, 10, 14]
      expect(sort(array)).to eq expected
    end
  end
end