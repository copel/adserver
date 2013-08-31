class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.integer :campaign_id
      t.integer :width
      t.integer :height
      t.integer :banner_type
      t.string :file_name
      t.integer :format_type
      t.string :image_url
      t.string :click_target
      t.text :html_tag
      t.integer :ad_type

      t.timestamps
    end
  end
end
