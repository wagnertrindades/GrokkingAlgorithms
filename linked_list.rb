class Node
  attr_accessor :name, :next_node

  def initialize(name, next_node=nil)
    @name = name
    @next_node = next_node
  end
end

class LinkedList

  def initialize
    @head = nil
    @size = 0
  end

  def insert_node(node_name)
    node = Node.new(node_name)

    if @size == 0
      @head = node
    else
      node.next_node = @head
      @head = node
    end

    @size += 1
  end

  def append_node(node_name)
    node = Node.new(node_name)

    if @size == 0
      @head = node
    else
      current_node = @head

      while current_node.next_node != nil
        current_node = current_node.next_node
      end

      current_node.next_node = node
    end

    @size += 1
  end

  def insert_node_at_location(node_name, position)
    return "The linked list has a lower size of #{position}"  if position > (@size + 1)

    node = Node.new(node_name)
    current_node = @head
    previous_node = nil

    (position - 1).times do
      previous_node = current_node
      current_node = current_node.next_node
    end

    node.next_node = current_node
    previous_node.next_node = node

    @size += 1
  end

  def delete_front_node
    front_node = @head
    @head = @head.next_node
    @size -= 1
  end

  def delete_end_node
    return 'This linked list is empty' if @size == 0

    if @size == 1
      @head = nil
    else
      current_node = @head
      previous_node = nil

      while current_node.next_node != nil
        previous_node = current_node
        current_node = current_node.next_node
      end

      previous_node.next_node = nil
    end

    @size -= 1
  end

  def delete_node(name)
    return 'This linked list is empty' if @size == 0

    current_node = @head
    previous_node = nil

    while current_node.next_node != nil
      if current_node.name == name
        previous_node.next_node = current_node.next_node
        @size -= 1

        break
      end

      previous_node = current_node
      current_node = current_node.next_node
    end
  end

  def print_linked_list
    current_node = @head

    @size.times do
      puts current_node.name
      current_node = current_node.next_node
    end
  end
end
