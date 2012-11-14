Tim::BaseImage.class_eval do
  belongs_to :pool_family

  validates_presence_of :pool_family_id
end
