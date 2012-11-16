FactoryGirl.define do
  factory :base_image, :class => Tim::BaseImage do
    name "test base image"
    description "description of test image"
    pool_family { PoolFamily.find_by_name('default') }
  end

  factory :base_image_with_template, :parent => :base_image do
    association :template, :factory => :template
  end
end
