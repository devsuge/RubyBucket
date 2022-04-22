class Subject < ApplicationRecord
  belongs_to :course
  belongs_to :s_buckets
end
