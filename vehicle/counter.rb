require 'yaml'

class InternalCounter
  attr_accessor :counters

  def initialize
    @counters = {}
  end

  def self.load
    return self.new unless File.exist? self.filename
    YAML::load_file self.filename
  end

  def save
    File.open(InternalCounter.filename, 'w') {|f| f.write self.to_yaml }
  end

  def read_count a_class
    name = a_class.class.to_s
    return 0 unless counters.key? name
    counters[name]
  end

  def inc_count a_class
    name = a_class.class.to_s
    count = read_count a_class
    counters[name] = count + 1
  end

  def self.filename
    dirname = File.join(File.dirname(__FILE__), '../tmp/')
    Dir::mkdir dirname unless File.exist? dirname
    dirname + 'counter.yml'
  end

end

class Counter

  def self.add_one a_class
    ic = InternalCounter.load
    ic.inc_count a_class
    ic.save
  end

  def self.value a_class
    ic = InternalCounter.load
    ic.read_count a_class
  end
  
end
