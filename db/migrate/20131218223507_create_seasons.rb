class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :description
      t.string :abbreviation
      t.integer :year

      t.timestamps
    end
  end
end
