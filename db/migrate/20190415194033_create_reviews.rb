class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :student_tutor_id
      t.integer :rating
      t.text :comments 

      t.timestamps
    end
  end
end
