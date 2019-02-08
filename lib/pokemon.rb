class Pokemon
  
  @@all = []
  
  attr_reader :id, :name, :type, :db
  
  def initialize(id:1,name:"",type:"",db:nil)
    @id = id 
    @name = name 
    @type = type 
    @db = db 
    
    @@all << self 
  end 
  
  def self.save(id,db)
    db.execute("INSERT INTO courses (id) VALUES (?)", name)
  end 
  
end
