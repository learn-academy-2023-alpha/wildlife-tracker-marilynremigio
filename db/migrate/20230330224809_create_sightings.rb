class CreateSightings < ActiveRecord::Migration[7.0]
  def change
    create_table :sightings do |t|
      t.string :animal_id
      t.string :integer
      t.float :latitude
      t.float :longitude
      t.string :date

      t.timestamps
    end
  end
end
