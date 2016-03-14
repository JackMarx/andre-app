class Visit < ActiveRecord::Base
  belongs_to :relation
  has_one :user, through: :relation
  has_one :website, through: :relation

  def duration
    end_time && start_time ? end_time - start_time : 0
  end
end
