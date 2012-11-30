class Swapfiles

  def initialize(file1, file2)
    @f1 = file1
    @f2 = file2
  end

  def swap
    file1 = File.open(@f1,"r+") 
    file2 = File.open(@f2,"r+") 
    s1 = file1.read
    s2 = file2.read
    file1.rewind
    file1.write(s2)
    file2.rewind
    file2.write(s1)
    file1.close
    file2.close 
  end
end

s = Swapfiles.new("./A","./B")
s.swap
