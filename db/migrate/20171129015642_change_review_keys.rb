class ChangeReviewKeys < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :reviews, :products , column: :product_id
  end
end
