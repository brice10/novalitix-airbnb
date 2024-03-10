class Room < ApplicationRecord
    has_many :images, as: :imageable
    belongs_to :housing, class_name: "housing", foreign_key: "housing_id"
end
