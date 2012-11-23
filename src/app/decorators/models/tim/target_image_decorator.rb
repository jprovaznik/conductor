Tim::TargetImage.class_eval do
  def self.find_by_images(images)
    TargetImage.joins(:image_version).
      where(:tim_image_versions => {:base_image_id => [images.map(&:id)]})
  end

  def base_image
    image_version.base_image
  end

  private

  def set_target
    # TODO: codenames have changed in new imagefactory
    #@target = provider_type.name
    @target = 'MockSphere'
  end
end
