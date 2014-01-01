class CreateFabrics < ActiveRecord::Migration
  def change
    create_table :fabrics do |t|
      t.string :part_number
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
