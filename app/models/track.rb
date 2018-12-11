class Track < ActiveRecord::Base
  has_many :courses
  validates :name, :presence => true
end
