class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.has_attached_file :logotype
      t.string :logotype
      t.string :url
      t.string :adress
      t.string :on_map
      t.string :phone
      t.boolean :is_confirmed

      t.timestamps null: false
    end
  end
end
