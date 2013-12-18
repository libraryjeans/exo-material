class CreateMills < ActiveRecord::Migration
  def change
    create_table :mills do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.string :telephone
      t.string :fax

      t.timestamps
    end
  end
end
