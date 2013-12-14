class AddCodewordToEvents < ActiveRecord::Migration
  def change
    add_column :events, :codeword, :string
  end
end
