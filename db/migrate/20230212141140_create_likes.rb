class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.bigint "user_id", null: false
      t.string "likable_type", null: false
      t.bigint "likable_id", null: false
      t.index ["likable_type", "likable_id"], name: "index_likes_on_likable_type_and_likable_id"
      t.index ["user_id"], name: "index_likes_on_user_id"

      t.timestamps
    end
  end
end
