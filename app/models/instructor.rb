class Instructor < User
  has_many :cohorts
  has_many :students, through: :cohorts
end
