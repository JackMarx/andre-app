class AddEmailToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :email, :string
  end
end
