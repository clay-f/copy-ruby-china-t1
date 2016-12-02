class RemoveNoteIdFromNote < ActiveRecord::Migration[5.0]
  def change
    remove_column :notes, :note_id, :integer
  end
end
