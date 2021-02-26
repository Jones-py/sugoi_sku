class CreateAplications < ActiveRecord::Migration[5.2]
  def change
    create_table :aplications do |t|
      t.string :payment_method
      t.timestamps
    end
  end
end
