class EntryDetail < ActiveRecord::Base
  attr_accessible :application_access, :elearning, :emp_id, :laptop, :location, :logical_access, :mailing_group, :mmo_bgc, :mmo_id, :nda, :odc_location, :physical_access, :security_session, :smart_card, :tcs_bgc, :tower, :user_id
end
