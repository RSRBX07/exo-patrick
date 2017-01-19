class Counter
  @@filename = './tmp/counter.txt'

  def add_one
    count = value + 1
    File.open(@@filename, 'w') do |line|
      line.puts count.to_s
    end    
  end

  def value
    return 0 unless File.exist? @@filename
    File.open(@@filename, 'r').each_line do |line|
      return line.to_i
    end
  end
end
