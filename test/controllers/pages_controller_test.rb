require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get startseite" do
    get :startseite
    assert_response :success
  end

  test "should get leistungen" do
    get :leistungen
    assert_response :success
  end

  test "should get ueber_uns" do
    get :ueber_uns
    assert_response :success
  end

  test "should get arbeiten_bei_pflege_team_bonert" do
    get :arbeiten_bei_pflege_team_bonert
    assert_response :success
  end

  test "should get kontakt" do
    get :kontakt
    assert_response :success
  end

  test "should get anfahrt" do
    get :anfahrt
    assert_response :success
  end

end
