class PregnancyWeeksInfo::Week

  attr_accessor :weight, :size, :weeks_left
  @@all = []

  def self.new_from_index_page()
    self.new()
  end

  def initialize(weight=nil, size=nil, weeks_left=nil)
    @weight = weight
    @size = size
    @weeks_left = weeks_left
  end
  
end
