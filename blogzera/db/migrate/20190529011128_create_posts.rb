class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.references :user, foreign_key: true
      t.datetime :published_at

      t.timestamps
    end
  end
end
