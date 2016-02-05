class RemoveCityFromSignUps < ActiveRecord::Migration
  def up
  	remove_column :sign_ups, :city
  end

  def down
  	add_column :sign_ups, :city, :string
  end
end
