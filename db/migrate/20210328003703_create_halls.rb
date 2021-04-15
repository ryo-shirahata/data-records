class CreateHalls < ActiveRecord::Migration[6.0]
  def change
    create_table :halls do |t|

      t.string     :name,      null: false
      t.string     :machine,   null: false
      t.text       :data,      null: false
      t.references :user,      foreign_key: true

      t.timestamps
    end
  end
end
