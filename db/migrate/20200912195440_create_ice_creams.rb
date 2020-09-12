class CreateIceCreams < ActiveRecord::Migration[6.0]
  def change
    create_table :ice_creams do |t|
      t.string :name
      t.text :description
      t.boolean :available
      t.boolean :featured
      t.datetime :date_churned

      t.timestamps
    end
  end
end
