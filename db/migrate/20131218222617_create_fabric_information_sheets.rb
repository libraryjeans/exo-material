class CreateFabricInformationSheets < ActiveRecord::Migration
  def change
    create_table :fabric_information_sheets do |t|
      t.string :article_number
      t.string :fiber_content
      t.string :construction
      t.string :yarn_count
      t.string :gauge
      t.integer :weight
      t.integer :width_full
      t.integer :width_cuttable
      t.string :finishing
      t.string :features
      t.text :care
      t.string :dyeing_method
      t.string :dobby_jacquard
      t.string :pattern_repeat
      t.string :print_method
      t.string :warp_weft
      t.string :country
      t.string :sewing_factory
      t.decimal :unit_price
      t.boolean :price_date_agree
      t.integer :bulk_order_color
      t.integer :bulk_order_total
      t.integer :bulk_lead
      t.integer :sample_order_color
      t.integer :sample_order_total
      t.integer :sample_lead
      t.integer :bulk_surcharge_order
      t.integer :sample_surcharge_order
      t.string :surcharge_note
      t.boolean :blue_sign_cert
      t.boolean :SGS_cert
      t.boolean :oke_tex_cert
      t.string :other_cert
      t.boolean :exo_standards
      t.string :exo_standards_note
      t.boolean :standards_sent
      t.boolean :standards_received
      t.references :fabric
      t.references :mill
      t.timestamps
    end
  end
end
