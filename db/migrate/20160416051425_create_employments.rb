class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.string :first_name
      t.string :second_name
      t.string :third_name
      t.string :photo
      t.string :phone
      t.date :birth_date
      t.text :decription
      t.belongs_to :specialty
      t.boolean :is_confirmed
      t.boolean :is_free

      t.timestamps null: false
    end
  end
end
