class ChangeDescriptionTypeToStringInBeliefsTable < ActiveRecord::Migration
  def change
    change_column :beliefs, :description, :string
  end
end
