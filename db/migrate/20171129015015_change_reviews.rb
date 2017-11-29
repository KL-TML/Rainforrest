class ChangeReviews < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :reviews, :products
  end
end
