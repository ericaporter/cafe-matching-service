class CreateCafays < ActiveRecord::Migration
  def change
    create_table :cafays do |t|
      t.string :location
      t.integer :bitterness, default: 0
      t.integer :plugs_available, default: 0
      t.boolean :has_gluten_free_option, default: false
      t.boolean :has_wifi, default: false

      t.timestamps null: false
    end
  end
end
