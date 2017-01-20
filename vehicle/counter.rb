require 'yaml'

class InternalCounter
  attr_accessor :counters

  def initialize
    @counters = {}
  end

  def self.load
    return YAML::load '' unless File.exist? self.filename
    YAML::load_file self.filename
  end

  def save
    File.open(InternalCounter.filename, 'w') {|f| f.write self.to_yaml }
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
    if ic.counters.key? a_class.to_s
      ic.counters[a_class.to_s] += 1 
    else
      ic.counters[a_class.to_s] = 1
    end
    ic.save
  end

  def self.value a_class
    ic = InternalCounter.load
    return 0 unless ic.counters.key? a_class.to_s
    ic.counters[a_class.to_s] 
  end
  
end
