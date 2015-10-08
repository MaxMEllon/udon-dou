class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      # 店名
      t.string :name
      # 店の概要
      t.text :description
      # 住所
      t.string :address
      # 緯度
      t.float :latitude
      # 経緯
      t.float :longitude

      t.timestamps null: false
    end
  end
end
