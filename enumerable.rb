# frozen_string_literal: true

# adding new methods to the existing Enumerable module
module Enumerable
  def my_each
    for i in 0..(self.length - 1)
      yield(self[i])
    end
    self
  end

  def my_each_with_index
    for i in 0..(self.length - 1)
      yield(self[i], i)
    end
    self
  end

  def my_select
    result_array = []
    for i in 0..(self.length - 1)
      result_array << self[i] if yield(self[i])
    end
    result_array
  end

  def my_all?
  end
end
