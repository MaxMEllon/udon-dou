class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      # ショップid
      t.integer :shop_id
      # ユーザーid
      t.integer :user_id
      # コメント
      t.text :comment
      t.timestamps null: false
    end
  end
end
