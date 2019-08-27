module MeerkatHelper
  def photo_or_fallback(meerkat)
    if meerkat.photo.present?
      # cl_image_tag # => generates a <img> tag
      cl_image_path(cocktail.photo)
    else
      asset_path('meerkat_rezdy_lg.jpg')
      # image_tag # => generates a <img> tag
    end
  end
end
