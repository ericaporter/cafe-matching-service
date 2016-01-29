class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :location
      t.integer :acceptable_bitterness, default: 0
      t.integer :plugs_required, default: 0
      t.boolean :needs_gluten_free_option, default: false
      t.boolean :requires_wifi, default: true
      
      t.timestamps null: false
    end
  end
end
