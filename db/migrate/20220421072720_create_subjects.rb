class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.belongs_to :course, null: false, foreign_key: true
      t.string :title
      t.string :faculty

      t.timestamps
    end
  end
end
