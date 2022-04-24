class Subject < ApplicationRecord
  belongs_to :course
  has_many :s_buckets
  has_many :users, through: :s_buckets
end
