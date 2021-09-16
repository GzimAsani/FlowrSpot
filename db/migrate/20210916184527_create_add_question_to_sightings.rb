class CreateAddQuestionToSightings < ActiveRecord::Migration[6.1]
  def change
    add_column :sightings, :question, :string

  end
end
