class Comedian < ActiveRecord::Base
  def self.total_age
    sum(:age)
  end

  def self.average_age
    total_age / Comedian.all.count
  end
end
