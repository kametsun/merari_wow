class Nft < ApplicationRecord
    has_one_attached :front_image
    has_one_attached :back_image
    belongs_to :user
end
