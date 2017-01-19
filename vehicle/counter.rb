class Counter
#  @@filename = './tmp/counter.txt'
#  @@filename = '/Users/admin/Desktop/ExosRuby/Test/tmp/counter.txt'
#  @@filename = File.join(File.dirname(__FILE__), '../tmp/counter.txt')

  def self.get_filename
    dirname = File.join(File.dirname(__FILE__), '../tmp')
    Dir::mkdir dirname unless File.exist? dirname
    filename = dirname + '/counter.txt'
  end

  def self.add_one
    count = value + 1
    File.open(get_filename, 'w') do |line|
      line.puts count.to_s
    end    
  end

  def self.value
    return 0 unless File.exist? get_filename
    File.open(get_filename, 'r').each_line do |line|
      return line.to_i
    end
  end
end
