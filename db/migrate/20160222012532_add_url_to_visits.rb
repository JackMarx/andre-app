class AddUrlToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :url, :string
    add_column :visits, :start_time, :datetime
    add_column :visits, :end_time, :datetime
  end
end
