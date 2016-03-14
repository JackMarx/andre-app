class User < ActiveRecord::Base
  has_many :relations
  has_many :websites, through: :relations

  has_many :visits, through: :relations, class: Visit
end
