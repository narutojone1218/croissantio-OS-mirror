class AddIndexesToJoinTables < ActiveRecord::Migration[5.1]
  def change
    add_index(:article_topics, :article_id)
    add_index(:article_topics, :topic_id)

    add_index(:resource_categories, :category_id)
    add_index(:resource_categories, :resource_id)
  end
end