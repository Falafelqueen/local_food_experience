class CreateJoinTableExperiencesCategories < ActiveRecord::Migration[6.0]
  def change
    create_join_table :experiences, :categories do |t|
      # t.index [:experience_id, :category_id]
      # t.index [:category_id, :experience_id]
    end
  end
end
