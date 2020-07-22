class MyQueue
  def initialize
    @content = []
  end

  def enqueue(element)
    @content.append(element)
  end

  def dequeue
    @content.delete_at(0)
  end

  def print
    @content.each do |element|
      puts element
    end
  end
end
