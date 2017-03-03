class CreateDivisions < ActiveRecord::Migration[5.0]
  def change
    create_table(:divisions) do |t|
      t.column(:division_name, :string)

      t.timestamps()
    end
  end
end
