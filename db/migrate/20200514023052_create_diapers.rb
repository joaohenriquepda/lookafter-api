class CreateDiapers < ActiveRecord::Migration[6.0]
  def change
    create_table :diapers do |t|
      t.string :name
      t.string :src
      t.string :size
      t.string :description

      t.timestamps
    end
  end
end
