class CreateBiotops < ActiveRecord::Migration[5.0]
  def change
    create_table :biotops do |t|
      t.integer :event_id
      t.integer :tag_id
      t.text :description

      t.timestamps
    end
  end
end
