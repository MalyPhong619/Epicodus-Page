class Course < ActiveRecord::Base
  belongs_to :track
  validates :name, :presence => true
end
