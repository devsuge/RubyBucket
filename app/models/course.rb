class Course < ApplicationRecord
  has_many :subjects
  belongs_to :c_buckets
end
