class User < ApplicationRecord
  belongs_to :c_bucket
  belongs_to :s_bucket
end
