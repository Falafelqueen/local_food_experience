class AddAddressToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :address, :text
  end
end
