class Housing < ApplicationRecord
    has_many :images, as: :imageable
    has_many :services, class_name: "service", foreign_key: "housing_id"
    has_many :rooms, class_name: "room", foreign_key: "housing_id"
    has_many :comments, class_name: "comment", foreign_key: "housing_id"
end
