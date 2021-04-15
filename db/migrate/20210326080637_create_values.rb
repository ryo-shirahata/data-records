class CreateValues < ActiveRecord::Migration[6.0]
  def change
    create_table :values do |t|

      t.text       :text,        null: false
      t.references :user,        foreign_key: true
      t.references :hall,        foreign_key: true

      t.timestamps
    end
  end
end
