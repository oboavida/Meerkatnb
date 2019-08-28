module MeerkatHelper
  def photo_or_fallback(meerkat)
    if meerkat.photo.present?
      cl_image_path(meerkat.photo)
    elsif meerkat.remote_photo_url.present?
      meerkat.remote_photo_url
    else
      asset_path('meerkat_rezdy_lg.jpg')
    end
  end
end
