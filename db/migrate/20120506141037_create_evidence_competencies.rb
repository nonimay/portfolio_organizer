class CreateEvidenceCompetencies < ActiveRecord::Migration
  def change
    create_table :evidence_competencies do |t|
      t.references :evidence
      t.references :competency

      t.timestamps
    end
    add_index :evidence_competencies, :evidence_id
    add_index :evidence_competencies, :competency_id
  end
end
