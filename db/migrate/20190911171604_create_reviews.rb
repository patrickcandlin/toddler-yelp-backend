class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.string :yelp_id
      t.string :yelp_name
      t.integer :rating
      t.string :content

      t.timestamps
    end
  end
end
