class CreateEntryDetails < ActiveRecord::Migration
  def change
    create_table :entry_details do |t|
      t.integer :user_id
      t.string :emp_id
      t.string :tower
      t.string :location
      t.string :odc_location
      t.string :tcs_bgc
      t.string :nda
      t.string :security_session
      t.string :mmo_bgc
      t.string :physical_access
      t.string :logical_access
      t.string :mailing_group
      t.string :mmo_id
      t.string :laptop
      t.string :application_access
      t.string :smart_card
      t.string :elearning

      t.timestamps
    end
  end
end
