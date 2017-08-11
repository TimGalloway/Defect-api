class CreateDefects < ActiveRecord::Migration[5.1]
  def change
    create_table :defects do |t|
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
