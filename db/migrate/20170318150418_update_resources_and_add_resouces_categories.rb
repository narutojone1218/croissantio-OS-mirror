class UpdateResourcesAndAddResoucesCategories < ActiveRecord::Migration[5.1]
  def change
    remove_column :resources, :category_id
    create_table :resources_categories do |t|
      t.integer :category_id, index: true
      t.integer :resource_id, index: true
    end
  end
end
