class TestUser < ActiveRecord::Base
  attr_accessible :card_no, :email, :emp_id, :emp_name
end
