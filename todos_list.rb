require "date"

class Todo
    def initialize(text, due_date, completed)
      @text = text
      @due_date = due_date
      @completed = completed
        
    end    

    def to_displayable_string
      if @completed==false
        puts (@text.to_s + ': ' + @due_date.to_s + ': ' + @completed.to_s)
      else
        puts ('[ X ]' + '  ' + @text.to_s ) 
      end
    end
end

class TodosList
    def initialize(todos)
      @todos = todos
    end
   
    def overdue
      TodosList.new(@todos.filter { |todo| todo.overdue? })
    end 

    def to_displayable_list
        # FILL YOUR CODE HERE        
        @todos.each do |hash|            
            hash.each do |key,value|
              if hash.has_value?(false)
                puts ('[  ]' + '  ' + @text.to_s )
              else
                puts ('[ X ]' + '  ' + @text.to_s )
              end
            end
        end        
    end
end

date = Date.today
todos = [
  { text: "Submit assignment", due_date: date - 1, completed: false },
  { text: "Pay rent", due_date: date, completed: true },
  { text: "File taxes", due_date: date + 1, completed: false },
  { text: "Call Acme Corp.", due_date: date + 1, completed: false },
]

todos = todos.map { |todo|
    Todo.new(todo[:text], todo[:due_date], todo[:completed])
}
todos_list = TodosList.new(todos)
#todos_list.add(Todo.new("Service vehicle", date, false))

puts "My Todo-list\n\n"
puts "Overdue\n"
#puts todos_list.overdue.to_displayable_lis
puts "\n\n"


=begin
  

Dear Sir/Madam,

I recived fowllwoing two Error. 
Please uncomment line no, 55 & 59 separately

Due to this, I unable to continue. Please help me 

Error No. 1  - lino 55 -  undefined method `add'


todos_list.rb:55:in `<main>': undefined method `add' for #<TodosList:0x000001713ff0c268
 @todos=[#<Todo:0x000001713ff0c4e8 @text="Submit assignment", @due_date=#<Date: 
2021-10-01 ((2459489j,0s,0n),+0s,2299161j)>, @completed=false>, 
#<Todo:0x000001713ff0c420 @text="Pay rent", @due_date=#<Date: 2021-10-02 
((2459490j,0s,0n),+0s,2299161j)>, @completed=true>, #<Todo:0x000001713ff0c3f8 
@text="File taxes", @due_date=#<Date: 2021-10-03 ((2459491j,0s,0n),+0s,2299161j)>,
 @completed=false>, #<Todo:0x000001713ff0c3d0 @text="Call Acme Corp.", 
 @due_date=#<Date: 2021-10-03 ((2459491j,0s,0n),+0s,2299161j)>, @completed=false>]> 
 (NoMethodError)

Error No. 2  -Overd
todos_list.rb:32:in `block in to_displayable_list': undefined method `each' for #<Todo:0x00000244511f2790 @text="Submit assignment", @due_date=#<Date: 2021-10-01 ((2459489j,0s,0n),+0s,2299161j)>, @completed=false> (NoMethodError)
        from todos_list.rb:31:in `each'
        from todos_list.rb:31:in `to_displayable_list'
        from todos_list.rb:58:in `<main>'


=end



