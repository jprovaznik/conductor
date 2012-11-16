Tim::ProviderImage.class_eval do
  def self.find_by_images(images)
    images.map do |img|
      img.image_versions.map do |ver|
        ver.target_images.map do |timg|
          timg.provider_images
        end
      end
    end.flatten
  end

  def base_image
    target_image.base_image
  end
end
