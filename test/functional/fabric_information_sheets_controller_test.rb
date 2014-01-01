require 'test_helper'

class FabricInformationSheetsControllerTest < ActionController::TestCase
  setup do
    @fabric_information_sheet = fabric_information_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fabric_information_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fabric_information_sheet" do
    assert_difference('FabricInformationSheet.count') do
      post :create, fabric_information_sheet: { SGS_cert: @fabric_information_sheet.SGS_cert, article_number: @fabric_information_sheet.article_number, blue_sign_cert: @fabric_information_sheet.blue_sign_cert, bulk_lead: @fabric_information_sheet.bulk_lead, bulk_order_color: @fabric_information_sheet.bulk_order_color, bulk_order_total: @fabric_information_sheet.bulk_order_total, bulk_surcharge_order: @fabric_information_sheet.bulk_surcharge_order, care: @fabric_information_sheet.care, construction: @fabric_information_sheet.construction, country: @fabric_information_sheet.country, dobby_jacquard: @fabric_information_sheet.dobby_jacquard, dyeing_method: @fabric_information_sheet.dyeing_method, exo_standards: @fabric_information_sheet.exo_standards, exo_standards_note: @fabric_information_sheet.exo_standards_note, features: @fabric_information_sheet.features, fiber_content: @fabric_information_sheet.fiber_content, finishing: @fabric_information_sheet.finishing, gauge: @fabric_information_sheet.gauge, oke_tex_cert: @fabric_information_sheet.oke_tex_cert, other_cert: @fabric_information_sheet.other_cert, pattern_repeat: @fabric_information_sheet.pattern_repeat, price_date_agree: @fabric_information_sheet.price_date_agree, print_method: @fabric_information_sheet.print_method, references: @fabric_information_sheet.references, references: @fabric_information_sheet.references, references: @fabric_information_sheet.references, sample_lead: @fabric_information_sheet.sample_lead, sample_order_color: @fabric_information_sheet.sample_order_color, sample_order_total: @fabric_information_sheet.sample_order_total, sample_surcharge_order: @fabric_information_sheet.sample_surcharge_order, sewing_factory: @fabric_information_sheet.sewing_factory, standards_received: @fabric_information_sheet.standards_received, standards_sent: @fabric_information_sheet.standards_sent, surcharge_note: @fabric_information_sheet.surcharge_note, unit_price: @fabric_information_sheet.unit_price, warp_weft: @fabric_information_sheet.warp_weft, weight: @fabric_information_sheet.weight, width_cuttable: @fabric_information_sheet.width_cuttable, width_full: @fabric_information_sheet.width_full, yarn_count: @fabric_information_sheet.yarn_count }
    end

    assert_redirected_to fabric_information_sheet_path(assigns(:fabric_information_sheet))
  end

  test "should show fabric_information_sheet" do
    get :show, id: @fabric_information_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fabric_information_sheet
    assert_response :success
  end

  test "should update fabric_information_sheet" do
    put :update, id: @fabric_information_sheet, fabric_information_sheet: { SGS_cert: @fabric_information_sheet.SGS_cert, article_number: @fabric_information_sheet.article_number, blue_sign_cert: @fabric_information_sheet.blue_sign_cert, bulk_lead: @fabric_information_sheet.bulk_lead, bulk_order_color: @fabric_information_sheet.bulk_order_color, bulk_order_total: @fabric_information_sheet.bulk_order_total, bulk_surcharge_order: @fabric_information_sheet.bulk_surcharge_order, care: @fabric_information_sheet.care, construction: @fabric_information_sheet.construction, country: @fabric_information_sheet.country, dobby_jacquard: @fabric_information_sheet.dobby_jacquard, dyeing_method: @fabric_information_sheet.dyeing_method, exo_standards: @fabric_information_sheet.exo_standards, exo_standards_note: @fabric_information_sheet.exo_standards_note, features: @fabric_information_sheet.features, fiber_content: @fabric_information_sheet.fiber_content, finishing: @fabric_information_sheet.finishing, gauge: @fabric_information_sheet.gauge, oke_tex_cert: @fabric_information_sheet.oke_tex_cert, other_cert: @fabric_information_sheet.other_cert, pattern_repeat: @fabric_information_sheet.pattern_repeat, price_date_agree: @fabric_information_sheet.price_date_agree, print_method: @fabric_information_sheet.print_method, references: @fabric_information_sheet.references, references: @fabric_information_sheet.references, references: @fabric_information_sheet.references, sample_lead: @fabric_information_sheet.sample_lead, sample_order_color: @fabric_information_sheet.sample_order_color, sample_order_total: @fabric_information_sheet.sample_order_total, sample_surcharge_order: @fabric_information_sheet.sample_surcharge_order, sewing_factory: @fabric_information_sheet.sewing_factory, standards_received: @fabric_information_sheet.standards_received, standards_sent: @fabric_information_sheet.standards_sent, surcharge_note: @fabric_information_sheet.surcharge_note, unit_price: @fabric_information_sheet.unit_price, warp_weft: @fabric_information_sheet.warp_weft, weight: @fabric_information_sheet.weight, width_cuttable: @fabric_information_sheet.width_cuttable, width_full: @fabric_information_sheet.width_full, yarn_count: @fabric_information_sheet.yarn_count }
    assert_redirected_to fabric_information_sheet_path(assigns(:fabric_information_sheet))
  end

  test "should destroy fabric_information_sheet" do
    assert_difference('FabricInformationSheet.count', -1) do
      delete :destroy, id: @fabric_information_sheet
    end

    assert_redirected_to fabric_information_sheets_path
  end
end
