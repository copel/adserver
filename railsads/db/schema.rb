# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130831192222) do

  create_table "banners", force: true do |t|
    t.integer  "campaign_id"
    t.integer  "width"
    t.integer  "height"
    t.integer  "banner_type"
    t.string   "file_name"
    t.integer  "format_type"
    t.string   "image_url"
    t.string   "click_target"
    t.text     "html_tag"
    t.integer  "ad_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaigns", force: true do |t|
    t.string   "campaign_name"
    t.integer  "client_id"
    t.integer  "revenue_type"
    t.datetime "campaign_start_date"
    t.datetime "campaign_end_date"
    t.integer  "total_target_view"
    t.integer  "total_target_click"
    t.integer  "total_target_convertion"
    t.integer  "user_team_cap"
    t.integer  "user_team_daily_cap"
    t.integer  "user_hourly_cap"
    t.integer  "user_cap_reset_time"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.integer  "client_type"
    t.string   "client_name"
    t.string   "contact"
    t.string   "email"
    t.boolean  "report"
    t.datetime "report_interval"
    t.boolean  "report_deactive"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publishers", force: true do |t|
    t.string   "publisher_name"
    t.string   "website"
    t.string   "email"
    t.string   "contact"
    t.integer  "publisher_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rtb_enables", force: true do |t|
    t.integer  "zone_id"
    t.integer  "dsp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zones", force: true do |t|
    t.integer  "publisher_id"
    t.string   "name"
    t.integer  "category"
    t.integer  "zone_type"
    t.integer  "width"
    t.integer  "height"
    t.integer  "position"
    t.integer  "floorprice"
    t.string   "block_domain"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
