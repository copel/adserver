class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :campaign_name
      t.integer :client_id
      t.integer :revenue_type
      t.datetime :campaign_start_date
      t.datetime :campaign_end_date
      t.integer :total_target_view
      t.integer :total_target_click
      t.integer :total_target_convertion
      t.integer :user_team_cap
      t.integer :user_team_daily_cap
      t.integer :user_hourly_cap
      t.integer :user_cap_reset_time
      t.string :comment

      t.timestamps
    end
  end
end
