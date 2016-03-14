class Relation < ActiveRecord::Base
  belongs_to :user
  belongs_to :website
  has_many :visits
  
end
