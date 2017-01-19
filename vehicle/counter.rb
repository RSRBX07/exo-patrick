class Counter

  def self.get_filename
    dirname = File.join(File.dirname(__FILE__), '../tmp/')
    Dir::mkdir dirname unless File.exist? dirname
    dirname + 'counter.txt'
  end

  def self.add_one a_class
    count = value(a_class) + 1
    counters = self.read_all
    counters[a_class.to_s] = count
    file = File.open(get_filename, 'w')
    counters.each do |e|
      file.puts(e[0] + '=' + e[1].to_s)
    end      
    file.close
  end

  def self.read_all
    return {} unless File.exist? get_filename
    counters = {}
    File.open(get_filename, 'r').each_line do |line|
      values = line.split '='
      counters[values[0]] = values[1]
    end
    counters
  end

  def self.value a_class
    return 0 unless File.exist? get_filename
    File.open(get_filename, 'r').each_line do |line|
      values = line.split '='
      if values[0] == a_class.to_s
        return values[1].to_i
      end
    end
    0
  end
end
