class Visit
  include DataMapper::Resource
  
  property :id, Serial
  property :time, DateTime, :nullable => false, :default => proc { Time.now() }

end
