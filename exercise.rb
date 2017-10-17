hash = {}
def fifty(a)
  x = 1
  50.times do
    if (x%2 == 0) && (x%7 ==0)
      a[x] = x*2
    elsif (x%2 == 0)
      a[x] = x+1
    elsif (x%7 == 0)
      a[x] = x-1
    else
      a[x] = x
    end
    x += 1
  end
end

fifty(hash)
puts hash.inspect
