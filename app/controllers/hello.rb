class Hello < Application

  def index
    Visit.create
    @visits = Visit.count
    render
  end
  
end
