class BinaryTree
    attr_accessor :payload, :left, :right
  
    def initialize(payload, left = nil, right = nil)
      @payload = payload
      @left = left
      @right = right
    end
  
    def insert(next_val)
      if @payload.nil?
        @payload = next_val
      elsif next_val < @payload
        @left ? @left.insert(next_val) : @left = BinaryTree.new(next_val)
      elsif next_val > @payload
        @right ? @right.insert(next_val) : @right = BinaryTree.new(next_val)
      else
        puts 'can\'t insert a non-unique value'
      end
    end
  
    def to_s
      str = ''
      str += "< Tree: @payload=#{@payload}\n"
      str += @payload.nil? ? "\t@payload: Nil\n" : "\t@payload: #{@payload}\n"
      str += @left.nil? ? "\t@left: Nil\n" : "\t@left: #{@left}\n"
      str += @right.nil? ? "\t@right: Nil>" : "\t@right: #{@right}>"
      str
    end
  end
  
  def build_sorted_tree(array)
    tree = BinaryTree.new(nil, nil, nil)
    array.each do |item|
      tree.insert(item)
    end
    tree
  end
  
  def flatten_tree(tree)
    array = []
    go_looking(tree, array)
    array
  end
  
  def go_looking(tree, array)
    go_looking(tree.left, array) unless tree.left.nil?
    array << tree.payload
    go_looking(tree.right, array) unless tree.right.nil?
  end
  
  def sort(array)
    tree = build_sorted_tree(array)
    flatten_tree(tree)
  end