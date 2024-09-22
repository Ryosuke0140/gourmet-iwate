class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.integer :user_id
      t.datetime :remember_created_at
      t.datetime :remember_updated_at
      t.timestamps
    end
  end
end
