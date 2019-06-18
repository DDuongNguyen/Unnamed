class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :api_id
      t.string :title
      t.string :location
      t.string :snippet
      t.string :url
      t.string :email
      t.boolean :cost
      t.string :cost_description
      t.string :date
      t.string :start_time
      t.timestamps
    end
  end
end
