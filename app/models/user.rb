class User < ApplicationRecord
  has_one :c_bucket
  has_one :s_bucket
end
