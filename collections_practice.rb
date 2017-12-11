require 'pry'

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    if a == b
      0
    elsif b < a
      -1
    elsif b > a
      1
    end
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    elsif a.length > b.length
      1
    end
  end
end

def swap_elements(array)
  # binding.pry
  array.sort do |a, b|
    if a == array[1]
      1
    elsif b == array[2]
      -1
    end
  end
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  kesha_array = []
  array.each do |name|
    # binding.pry
    name[2] = "$"
    kesha_array << name
  end
  kesha_array
end

def find_a(array)
  array.select do |word|
    word.start_with?("a")
  end
end

def sum_array(array)
  array.inject do |sum, x|
    sum + x
  end
end

def add_s(array)
  array.each_with_index.collect do |word, index|
    if index != 2
      word + "s"
    end
  end
end