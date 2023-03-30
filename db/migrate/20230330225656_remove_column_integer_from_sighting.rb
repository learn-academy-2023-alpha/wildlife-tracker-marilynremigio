class RemoveColumnIntegerFromSighting < ActiveRecord::Migration[7.0]
  def change
    remove_column :sightings, :integer, :string
  end
end
