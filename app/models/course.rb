class Course < ApplicationRecord
  has_many :subjects
  has_many :c_buckets
end
