class Follow < ApplicationRecord
  validates_uniqueness_of :follow_id, scope: :follower_id
end
