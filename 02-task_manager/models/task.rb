class Task

  attr_reader :id
  attr_accessor :title, :description, :done

  def initialize(attrs = {})
    @id = attrs[:id]
    @title = attrs[:title]
    @description = attrs[:description]
    @done = attrs[:done] || false
  end

  def self.find(id)
    task_find = DB.execute("SELECT * FROM tasks WHERE id = ?", id).first
    task_find.nil? ? "No se encontró en la bd" : build(task_find)
  end

  def save
    if @id.nil?
      DB.execute('INSERT INTO tasks (title, description, done) VALUES (?,?,?)', @title, @description, @done ? 1 : 0)
      @id = DB.last_insert_row_id
    else
      DB.execute('UPDATE tasks SET title = ?, description = ?, done = ? WHERE id = ?', @title, @description, @done ? 1 : 0, @id)
    end
  end

  def self.all
    DB.execute("SELECT * FROM tasks").map do |row|
      build(row)
    end
  end

  def destroy
    DB.execute("DELETE FROM tasks WHERE id = ?", @id)
  end

  def self.build(result)
    Task.new(
      id: result["id"],
      title: result["title"],
      description: result["description"],
      done: result["done"] == 1)
  end
end

# Let’s build a Task class capable of CRUD against a SQL table tasks.
# You are given a tasks.db database with one task (id = 1), a task.rb file to complete and a test.rb to test your code.
# * 1.Implement the READ logic to find a given task (by its id)
# * 2.Implement the CREATE logic in a save instance method
# * 3. Implement the UPDATE logic in the same method
# * 4. Implement the READ logic to retrieve all tasks (what type of method is it?)
# * 5. Implement the DESTROY logic on a task
