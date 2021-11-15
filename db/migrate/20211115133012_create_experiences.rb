class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.text :description
      t.integer :price_per_hour
      t.integer :min_time
      t.integer :max_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
