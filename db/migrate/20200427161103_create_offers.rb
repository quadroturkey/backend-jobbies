class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.integer :tracker_id
      t.string :position
      t.string :company
      t.string :salary
      t.string :details
      t.date :start_date
      t.date :respond_by

      t.timestamps
    end
  end
end
