class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :band_name
      t.string :contact_name
      t.string :contact_number

      t.timestamps
    end
  end
end
