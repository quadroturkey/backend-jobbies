class CreateTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :trackers do |t|
      t.integer :user_id
      t.string :title
      t.string :company
      t.string :description
      t.date :search_date
      t.date :start_date
      t.date :app_sent

      t.timestamps
    end
  end
end
