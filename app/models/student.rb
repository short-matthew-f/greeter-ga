class Student < User
  has_many :enrollments
  has_many :cohorts, through: :enrollments
  has_many :instructors, through: :cohorts
end
