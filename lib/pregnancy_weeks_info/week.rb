class PregnancyWeeksInfo::Week

  attr_accessor :weightUS, :weightMetric, :fruit, :weeks_left, :url, :readings, :symptoms, :readings

  @@all = []

  def initialize(weightUS=nil, weightMetric=nil, fruit=nil, weeks_left=nil, url=nil, symptoms=nil, readings=nil)
    @weightUS = weightUS
    @weightMetric = weightMetric
    @fruit = fruit
    @weeks_left = weeks_left
    @url = url

    @symptoms = symptoms
    @readings = readings

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-2]
  end

end
