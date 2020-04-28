class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.integer :tracker_id
      t.string :name
      t.string :email
      t.string :linkedin
      t.string :notes

      t.timestamps
    end
  end
end
