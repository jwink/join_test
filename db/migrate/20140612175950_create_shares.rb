class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.references :category
      t.references :event
      t.timestamps
    end
  end
end
