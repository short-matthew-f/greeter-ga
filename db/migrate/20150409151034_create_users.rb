class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false, index: true
      t.string :password_digest, null: false
      t.string :session_token

      t.string :role, null: false, default: 'Student'

      t.timestamps null: false
    end
  end
end
