class User < ActiveRecord::Base
  has_secure_password

  # For STI
  scope :students, -> { where(role: 'Student') }
  scope :instructors, -> { where(role: 'Instructor') }

  self.inheritance_column = :role
  def self.roles
    %w(Student Instructor)
  end
end
