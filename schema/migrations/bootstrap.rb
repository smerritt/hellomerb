include DataMapper::Types 
migration 1, :bootstrap do

  up do
    create_table :visits do
      column :id, Serial
      column :time, DateTime
    end
  end

  down do
    drop_table :visits
  end
end
