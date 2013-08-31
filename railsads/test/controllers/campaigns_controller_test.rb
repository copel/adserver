require 'test_helper'

class CampaignsControllerTest < ActionController::TestCase
  setup do
    @campaign = campaigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campaign" do
    assert_difference('Campaign.count') do
      post :create, campaign: { campaign_end_date: @campaign.campaign_end_date, campaign_name: @campaign.campaign_name, campaign_start_date: @campaign.campaign_start_date, client_id: @campaign.client_id, comment: @campaign.comment, revenue_type: @campaign.revenue_type, total_target_click: @campaign.total_target_click, total_target_convertion: @campaign.total_target_convertion, total_target_view: @campaign.total_target_view, user_cap_reset_time: @campaign.user_cap_reset_time, user_hourly_cap: @campaign.user_hourly_cap, user_team_cap: @campaign.user_team_cap, user_team_daily_cap: @campaign.user_team_daily_cap }
    end

    assert_redirected_to campaign_path(assigns(:campaign))
  end

  test "should show campaign" do
    get :show, id: @campaign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campaign
    assert_response :success
  end

  test "should update campaign" do
    patch :update, id: @campaign, campaign: { campaign_end_date: @campaign.campaign_end_date, campaign_name: @campaign.campaign_name, campaign_start_date: @campaign.campaign_start_date, client_id: @campaign.client_id, comment: @campaign.comment, revenue_type: @campaign.revenue_type, total_target_click: @campaign.total_target_click, total_target_convertion: @campaign.total_target_convertion, total_target_view: @campaign.total_target_view, user_cap_reset_time: @campaign.user_cap_reset_time, user_hourly_cap: @campaign.user_hourly_cap, user_team_cap: @campaign.user_team_cap, user_team_daily_cap: @campaign.user_team_daily_cap }
    assert_redirected_to campaign_path(assigns(:campaign))
  end

  test "should destroy campaign" do
    assert_difference('Campaign.count', -1) do
      delete :destroy, id: @campaign
    end

    assert_redirected_to campaigns_path
  end
end
