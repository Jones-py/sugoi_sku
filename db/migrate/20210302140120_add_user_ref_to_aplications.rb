class AddUserRefToAplications < ActiveRecord::Migration[5.2]
  def change
    add_reference :aplications, :user, foreign_key: true
  end
end
