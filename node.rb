# frozen_string_literal: true

# Represents one node
class Node
  attr_accessor :value, :next_node

  def initialize
    @value = nil
    @next_node = nil
  end
end
