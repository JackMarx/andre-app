class Website < ActiveRecord::Base
  has_many :relations
  has_many :users, through: :relations
  has_many :visits, through: :relations, class: Visit
end
