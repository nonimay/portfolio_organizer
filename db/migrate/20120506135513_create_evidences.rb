class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
      t.string :title
      t.date :date
      t.references :evidence_type
      t.references :user

      t.timestamps
    end
    add_index :evidences, :evidence_type_id
    add_index :evidences, :user_id
  end
end
