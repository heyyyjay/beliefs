class UserBelief < ActiveRecord::Base
  attr_accessible :user_id, :belief_id
  belongs_to :user
  belongs_to :belief
end
