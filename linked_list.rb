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

  end

  # returns the total number of nodes in the list
  def size
    return 1 if @head == @tail

    current_node = @head
    counter = 1
    until current_node == @tail do
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end

  # returns the node at the given index
  def at(index)

  end

  # removes the last element from the list
  def pop

  end

  # returns true if the passed in value is in the list and otherwise returns false
  def contains?(value)

  end

  # returns the index of the node containing value, or nil if not found
  def find(value)

  end

  # represent your LinkedList object as string, so you can print them out and preview
  # in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  def to_s

  end

  # inserts a new node with the provided value at the given index
  def insert_at(value, index)

  end

  # removes node at given index
  def remove_at(index)

  end
end
