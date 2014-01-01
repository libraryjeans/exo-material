class FabricInformationSheet < ActiveRecord::Base
  attr_accessible :SGS_cert, :article_number, :blue_sign_cert, :bulk_lead, :bulk_order_color, 
  :bulk_order_total, :bulk_surcharge_order, :care, :construction, :country, :dobby_jacquard, 
  :dyeing_method, :exo_standards, :exo_standards_note, :features, :fiber_content, :finishing, 
  :gauge, :oke_tex_cert, :other_cert, :pattern_repeat, :price_date_agree, :print_method, :sample_lead, 
  :sample_order_color, :sample_order_total, :sample_surcharge_order, :sewing_factory, :standards_received, 
  :standards_sent, :surcharge_note, :unit_price, :warp_weft, :weight, :width_cuttable, :width_full, :yarn_count
end
