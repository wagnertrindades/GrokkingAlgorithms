class Stack
  def initialize
    @content = []
  end

  def push(element)
    @content.append(element)
  end

  def pop
    @content.slice!(-1)
  end

  def print
    @content.each do |element|
      puts element
    end
  end
end
