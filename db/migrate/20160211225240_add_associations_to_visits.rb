class AddAssociationsToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :relation_id, :integer
  end
end
