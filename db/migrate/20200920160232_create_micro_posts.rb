class CreateMicroPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :micro_posts do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
