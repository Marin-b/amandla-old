class Place < ApplicationRecord
  belongs_to :category
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_one_attached :banner
  has_many_attached :photos

  acts_as_taggable_on :tags

  def banner_url
    if banner.attached?
      return banner.service_url
    end

    return cl_image_path "amandla_logo"
  end
end
