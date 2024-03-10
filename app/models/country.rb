class Country < ApplicationRecord
    has_many :housings, class_name: "housing", foreign_key: "category_id"
end
