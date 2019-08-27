module UserHelper
  def photo_or_fallback_user(user)
    if user.photo.present?
      # cl_image_tag # => generates a <img> tag
      cl_image_path(user.photo)
    else
      asset_path('default_profile_pic.gif')
      # image_tag # => generates a <img> tag
    end
  end
end
