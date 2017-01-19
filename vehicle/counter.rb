class Counter

  def self.add_one a_class
    counters = self.read_all
    if counters.key? a_class.to_s
      counters[a_class.to_s] += 1 
    else
      counters[a_class.to_s] = 1
    end
    file = File.open(get_filename, 'w')
    counters.each do |e|
      file.puts(e[0] + '=' + e[1].to_s)
    end      
    file.close
  end

  def self.value a_class
    counters = self.read_all
    return 0 unless counters.key? a_class.to_s
    counters[a_class.to_s] 
  end

  private
  def self.get_filename
    dirname = File.join(File.dirname(__FILE__), '../tmp/')
    Dir::mkdir dirname unless File.exist? dirname
    dirname + 'counter.txt'
  end
  
  def self.read_all
    return {} unless File.exist? get_filename
    counters = {}
    File.open(get_filename, 'r').each_line do |line|
      values = line.split '='
      counters[values[0]] = values[1].to_i
    end
    counters
  end
  
end
