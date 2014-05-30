class CreateUserBeliefsTable < ActiveRecord::Migration
  def change
    create_table :user_beliefs do |t|
      t.integer :user_id
      t.integer :belief_id
    end
  end
end
