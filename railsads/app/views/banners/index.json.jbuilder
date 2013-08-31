json.array!(@banners) do |banner|
  json.extract! banner, :campaign_id, :width, :height, :banner_type, :file_name, :format_type, :image_url, :click_target, :html_tag, :ad_type
  json.url banner_url(banner, format: :json)
end
