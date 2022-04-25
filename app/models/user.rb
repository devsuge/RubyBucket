class User < ApplicationRecord
  has_many :c_buckets
  has_many :s_buckets
  has_many :courses, through: :c_buckets
  has_many :subjects, through: :s_buckets
end
