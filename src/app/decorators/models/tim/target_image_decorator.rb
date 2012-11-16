Tim::TargetImage.class_eval do
  def self.find_by_images(images)
    images.map do |img|
      img.image_versions.map do |ver|
        ver.target_images
      end
    end.flatten
  end

  def base_image
    image_version.base_image
  end
end
