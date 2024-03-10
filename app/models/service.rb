class Service < ApplicationRecord
    belongs_to :housing, class_name: "housing", foreign_key: "housing_id"
end
