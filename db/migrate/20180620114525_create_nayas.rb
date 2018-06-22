class CreateNayas < ActiveRecord::Migration[5.2]
  def change
    create_table :nayas do |t|
      t.string :Name
      t.string :Type

      t.timestamps
    end
  end
end
