class CreateTestUsers < ActiveRecord::Migration
  def change
    create_table :test_users do |t|
      t.string :email
      t.string :emp_id
      t.string :emp_name
      t.string :card_no

      t.timestamps
    end
  end
end
