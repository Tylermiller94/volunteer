class Project
  attr_accessor(:name)
  attr_reader(:id)

  def initialize(attributes)
  attributes.each do |key, value|
    instance_variable_set("@#{key}", value) unless value.nil?
  end


  def save
    result = DB.exec("INSERT INTO projects (name) VALUES ('#{@name}') RETURNING id;")
    @id = result.first()['id'].to_i
  end



end
