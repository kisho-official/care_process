class AddDetailsToUser < ActiveRecord::Migration
  def up
    add_column :users, :emp_id, :string
    add_column :users, :emp_name, :string
    add_column :users, :card_no, :string
  end
  def down
    
  end
end
