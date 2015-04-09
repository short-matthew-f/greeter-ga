class Cohort < ActiveRecord::Base
  belongs_to :instructor
  has_many :enrollments
  has_many :students, through: :enrollments
end
