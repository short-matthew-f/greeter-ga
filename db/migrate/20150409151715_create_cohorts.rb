class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :name
      t.integer :instructor_id, index: true

      t.timestamps null: false
    end
  end
end
