class AddApproveToAplications < ActiveRecord::Migration[5.2]
  def change
    add_column :aplications, :is_approved, :boolean, default: false
  end
end
