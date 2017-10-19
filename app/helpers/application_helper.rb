module ApplicationHelper
  def item_image_tag_or_default(item)
    if item.photo?
      cl_image_tag item.photo.path, height: 300, width: 400, crop: :fill, class: "product-image"
    else
      image_tag "Logo_grow_share_short.png", class: "product-image"
    end
  end
end
