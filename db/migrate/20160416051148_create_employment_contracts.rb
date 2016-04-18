class CreateEmploymentContracts < ActiveRecord::Migration
  def change
    create_table :employment_contracts do |t|
      t.date :date_start
      t.date :date_and
      t.belongs_to :company
      t.belongs_to :employment


      t.timestamps null: false
    end
  end
end
