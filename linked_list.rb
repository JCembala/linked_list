# frozen_string_literal: true
require_relative 'node'

# Represents full list
class LinkedList
  attr_reader :head, :tail

  def initialize
    @head = Node.new
    @tail = Node.new
  end

  # adds a new node containing value to the end of list
  def append(value)
    node = Node.new(value)
    if @head.value.nil?
      @head = node
    else
      @tail.next_node = node
    end
    @tail = node
  end

  # adds a new node containing value to the start of list
  def prepend(value)
    node = Node.new(value)
    node.next_node = @head unless head.value.nil?
    @head = node
  end

  # returns the total number of nodes in the list
  def size
    return 0 if @head.value.nil?
    return 1 if @head == @tail

    current_node = @head
    counter = 1
    until current_node == @tail
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end

  # returns the node at the given index
  def at(index)
    return nil if size < index

    current_index = 0
    current_node = @head
    until current_index == index
      current_node = current_node.next_node
      current_index += 1
    end
    current_node
  end

  # removes the last element from the list
  def pop
    return nil if size.zero?

    old_tail = @tail
    @tail = at(size - 2)
    @tail.next_node = nil
    old_tail
  end

  # returns true if the passed in value is in the list and otherwise returns false
  def contains?(value)
    return false if size.zero?

    current_node = @head
    until current_node.nil?
      return true if current_node.value == value

      current_node = current_node.next_node
    end
    false
  end

  # returns the index of the node containing value, or nil if not found
  def find(value)
    return nil if size.zero?
    return nil unless contains?(value)

    current_index = 0
    current_node = @head
    until current_node.nil?
      return current_index if current_node.value == value

      current_node = current_node.next_node
      current_index += 1
    end
  end

  # represent your LinkedList object as string, so you can print them out and preview
  # in the console. The format should be: ( value ) -> ( value ) -> ( value )
  def to_s
    current_node = @head
    string = ''
    until current_node == @tail
      string += "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end
    string += "( #{current_node.value} )"
    string
  end

  # inserts a new node with the provided value at the given index
  def insert_at(value, index)
    return if index < 1 || index > size

    new_node = Node.new(value)
    old_node = at(index)
    at(index - 1).next_node = new_node
    new_node.next_node = old_node
  end

  # removes node at given index
  def remove_at(index) end
end
