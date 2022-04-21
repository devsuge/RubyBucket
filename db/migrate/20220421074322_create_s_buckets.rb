class CreateSBuckets < ActiveRecord::Migration[7.0]
  def change
    create_table :s_buckets do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :subject, null: false, foreign_key: true
      t.integer :priority

      t.timestamps
    end
  end
end
