class CreateSchoolPurchases < ActiveRecord::Migration
  def change
    create_table :school_purchases do |t|
      t.string :ben
      t.integer :bandwidth
      t.string :measure
      t.integer :cost

      t.timestamps
    end

    add_index :school_purchases, :ben
  end
end
