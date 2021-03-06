class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text :title
      t.text :description
      t.date :from_date
      t.date :to_date

      t.timestamps
    end
  end
end
