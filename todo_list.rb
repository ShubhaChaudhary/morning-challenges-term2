# For this challenge, your Todo List should be able to perform all actions
# given in the test. Namely you should be able to:
# 1. create a new todo list with a title and description
# 2. update the title or description
# 3. get a count of items in the list
# 4. check to see if all items in the list are marked done
# 5. mark all items in the list as done
# 6. add items to the list
# 7. mark a single item in the list as done
# 8. delete items from the list

# To accomplish this, you should define two classes - a TodoList class
# and a TodoListItem class.

class TodoList
  attr_accessor :title,:status
  def initialize
    @item_list={}
    @count=0
  end  

  def add_item(title,status)
    @title =title
    @status=status
    @item_list[@title]=@status
    @item_list
  end
  def update_title(current_title,modified_title)
      @current_title = current_title
      @modified_title= modified_title
      @item_list[@modified_title]=@item_list.delete(@current_title)
      @item_list
  end 
  def update_status(current_status,modified_status)
      @current_status = current_status
      @modified_status= modified_status
      @item_list[@modified_status]=@item_list.delete(@current_status)
      @item_list
  end
  def count
    @item_list.length
  end  
  def check_current_status
   @item_list.each{|k,v|  v == "finish" ? @count +=1 : "unfinish"}
     "you have finished #{@count} items in list "
  end 
  def all_item_finish
   @finish_unfinish_item=@item_list.values 
   @finish_unfinish_item.all?{|check| check=="finish"} ? ( "All the items in list has been finished") : ( "you have some unfinished items in list") 
  end 
  def delete_item(item)
    @item=item
    @item_list.delete(@item)
  end
  def check_every_item
    @item_list.each{|k,v| v=="finish" ? (p "you have finished #{k} item") :(p "you still have this #{k} item unfinish in your list ")}
  end    
end

list=TodoList.new
list.add_item("resume","finish")
p list.add_item("resume-modification","unfinish")
p list.update_title("resume","final-resume")
p list.count
p list.check_current_status
p list.all_item_finish
p list.check_every_item
# class TodoListItem
# end