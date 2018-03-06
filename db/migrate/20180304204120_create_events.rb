class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|

      t.string :title
      t.datetime :date_range
      t.datetime :start
      t.datetime :end
      t.text :color

      t.timestamps
    end
  end
end

