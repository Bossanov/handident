class AddProfileReferenceToReviews < ActiveRecord::Migration[5.1]
  def change
    add_reference :reviews, :profile, foreign_key: true, index: true
  end
end

