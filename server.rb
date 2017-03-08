require "sinatra"
require "pry"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/tasks" do
  # iterate over each line and stow it in an array
  @tasks = File.readlines("tasks.txt")
  erb :team_index
end

post "/tasks" do
  if params[:task_name].strip.empty?
    # boo
  else
      task = params["task_name"]

      File.open("tasks.txt", "a") do |file|
        file.puts(task)
      end
  end

  redirect "/tasks"
end




# def add_to_file(task)
#   File.open("tasks.txt", "a") do |file|
#     file.puts(task)
#   end
# end














get "/tasks/:task_name" do
  # whatever comes after /tasks/ will be stowed as a variable in the params hash
  @task_name = params[:task_name]
  erb :show
end
