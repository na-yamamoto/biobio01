class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :tname
      t.integer :num_users

      t.timestamps
    end
  end
end
