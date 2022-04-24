class Course < ApplicationRecord
  has_many :subjects
  has_many :c_buckets
  has_many :users, through: :c_buckets
end
