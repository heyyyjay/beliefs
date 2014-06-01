class Belief < ActiveRecord::Base
  attr_accessible :description, :total_believers
  after_initialize :init

  def init
    self.total_believers ||= 1
  end

  def remove_believer
    self.total_believers -= 1
    self.save
  end

end
