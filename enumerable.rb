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

  def my_inject(memo = self[0])
    if memo == self[0]
      for i in 1..(self.length - 1)
        memo = yield(memo, self[i])
      end
    else
      for i in 0..(self.length - 1)
        memo = yield(memo, self[i])
      end
    end
    memo
  end

  def my_map(proc = nil)
    result_array = []
    if !(proc.nil?) && proc.class == Proc
      for i in 0..(self.length - 1)
        result_array << proc.call(self[i])
      end
      return result_array
    elsif block_given?
      for i in 0..(self.length - 1)
        result_array << yield(self[i])
      end
      return result_array
    else
      'Neither proc or block given.'
    end
  end
end
# rubocop:enable Style/For
