class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :documento
      t.string :email
      t.string :tell1
      t.string :cel
      t.date :fechana
      t.string :direccion
      t.string :nomfam
      t.string :tell2
      t.references :grupo
      t.references :tpodocumento

      t.timestamps
    end
    add_index :estudiantes, :grupo_id
    add_index :estudiantes, :tpodocumento_id
  end
end
