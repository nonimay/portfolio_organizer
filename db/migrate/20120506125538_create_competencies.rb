class CreateCompetencies < ActiveRecord::Migration
  def change
    create_table :competencies do |t|
      t.string :number
      t.string :title
      t.references :section

      t.timestamps
    end
    add_index :competencies, :section_id
  end
end
