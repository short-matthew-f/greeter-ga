class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :cohort_id, index: true
      t.integer :student_id, index: true

      t.timestamps null: false
    end
  end
end
