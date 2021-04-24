require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    # home画面にいく
    get home_path
    # home画面が表示されることをチェック
    assert_template 'static_pages/home'
    # home画面へのリンクが２つかチェック
    assert_select "a[href=?]", home_path, count: 2
    # help画面へのリンクをチェック
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end
end
