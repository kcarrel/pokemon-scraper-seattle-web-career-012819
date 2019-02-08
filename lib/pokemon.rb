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
  
  def self.save(name,type,db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end 
  
  def self.find(id, db)
    rows = db.execute("SELECT * FROM pokemon WHERE id = ?", id)
    row = rows.first
    Pokemon.new(id: row[0], name: row[1], type: row[2], db:nil)
  end 
  
end
