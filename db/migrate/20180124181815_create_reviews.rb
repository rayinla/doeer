class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
    	t.integer :stars
    	t.text    :body
    	t.integer :reviewable_id
    	t.string  :reviewable_type
    	t.timestamps
    end

    add_index :reviews, [:reviewable_type, :reviewable_id]
  end
end
