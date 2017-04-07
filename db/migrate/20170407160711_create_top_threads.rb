class CreateTopThreads < ActiveRecord::Migration[5.0]
  def change
    create_table :top_threads do |t|
      t.string :title
      t.text :content
      t.integer :upvotes

      t.timestamps
    end
  end
end
