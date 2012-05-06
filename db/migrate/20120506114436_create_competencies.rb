class CreateCompetencies < ActiveRecord::Migration
  def change
    create_table :competencies do |t|
      t.integer :number
      t.string :title
      t.section :references

      t.timestamps
    end
  end
end
