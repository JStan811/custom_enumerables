# frozen_string_literal: true

# rubocop:disable Style/For
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
    boolean_to_return = true
    for i in 0..(self.length - 1)
      boolean_to_return = false if yield(self[i]) == false || yield(self[i]) == nil
    end
    boolean_to_return
  end

  def my_any?
    boolean_to_return = false
    for i in 0..(self.length - 1)
      boolean_to_return = true if yield(self[i]) == true
    end
    boolean_to_return
  end

  def my_none?
    boolean_to_return = true
    for i in 0..(self.length - 1)
      boolean_to_return = false if yield(self[i]) == true
    end
    boolean_to_return
  end

  def my_count(item = 0)
    count_value = 0
    for i in 0..(self.length - 1)
      if block_given?
        count_value += 1 if yield(self[i]) == true
      else
        count_value += 1 if self[i] == item
      end
    end
    count_value
  end

  def my_map
    result_array = []
    for i in 0..(self.length - 1)
      result_array << yield(self[i])
    end
    result_array
  end

  def my_inject
  end
end
# rubocop:enable Style/For
