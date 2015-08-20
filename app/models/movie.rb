class Movie < ActiveRecord::Base
  # validates :title, length: {in: 1..50 }, presence: true
   validates :format, presence: true
   validates_numericality_of :length, less_than_or_equal_to: 500, greater_than_or_equal_to: 0, presence: true
   validates :rating, presence: true
   validates_numericality_of :release_year, less_than_or_equal_to: 2100, greater_than_or_equal_to: 1800, presence: true


end
