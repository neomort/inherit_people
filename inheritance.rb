class Parent
def use_parent_method
  "This was a call from parent"
end
def override
  return "from parent"
  end

  def alterable
    return "from parent again"
  end


end

class Child < Parent

def override
return "from child"
end

def alterable
puts "hello"
puts super()
puts "by"

end

end

p = Parent.new
c = Child.new

puts p.use_parent_method
puts c.use_parent_method
puts p.override
puts c.override

puts p.alterable
puts c.alterable