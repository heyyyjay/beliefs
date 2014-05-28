class CreateBeliefs < ActiveRecord::Migration
  def change
    create_table :beliefs do |t|
      t.text :description
      t.integer :total_believers

      t.timestamps
    end
  end
end
