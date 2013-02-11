class CreateKits < ActiveRecord::Migration
  def change
    create_table :kits do |t|
      t.string :name
      t.string :photo_url
      t.integer :set_num
      t.string :date
      t.decimal :value
      t.integer :user_id
      t.integer :theme_id

      t.timestamps
    end
  end
end
