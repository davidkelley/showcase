ROM::SQL.migration do
  change do
    create_table :users do
      primary_key :id
      column :name, String, null: false
      column :age, Fixnum, default: 18
      column :uuid, String
    end
  end
end
