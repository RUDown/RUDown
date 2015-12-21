class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.string :time
      t.string :authorID

      t.timestamps null: false
    end
  end
end
