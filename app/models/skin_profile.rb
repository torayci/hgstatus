class SkinProfile < ActiveRecord::Base
  belongs_to :skin_concern
  belongs_to :user
end
