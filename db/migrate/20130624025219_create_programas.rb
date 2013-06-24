class CreateProgramas < ActiveRecord::Migration
  def change
    create_table :programas do |t|
      t.string :nombre
      t.float :precio
      t.text :observaciones

      t.timestamps
    end
  end
end
