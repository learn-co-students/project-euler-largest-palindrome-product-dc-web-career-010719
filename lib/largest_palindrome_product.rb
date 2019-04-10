def is_palindrome?(num)
  num.to_s == num.to_s.reverse
end

def largest_palindrome_product
  min = 100
  max = 999
  largest = nil
  
  (min..max).each do |n|
    (min..max).each do |m|
      p = n*m
      if is_palindrome?(p)
        largest = p if !largest || p > largest
      end
    end
  end

  return largest
end