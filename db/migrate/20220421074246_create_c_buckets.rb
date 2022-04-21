class CreateCBuckets < ActiveRecord::Migration[7.0]
  def change
    create_table :c_buckets do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :course, null: false, foreign_key: true
      t.integer :priority

      t.timestamps
    end
  end
end
