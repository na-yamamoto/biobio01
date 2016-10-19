class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :edate
      t.integer :etype

      t.timestamps
    end
  end
end
