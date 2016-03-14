class AddAssociationsToRelations < ActiveRecord::Migration
  def change
    add_column :relations, :user_id, :integer
    add_column :relations, :website_id, :integer
    add_column :relations, :productive, :boolean, default: false
  end
end
