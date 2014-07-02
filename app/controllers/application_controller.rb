class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def new
  end
  def create
    i = Idea.new
    i.name = params['name']
    i.idea = params['idea']
    i.tag = params['tag']
    i.save
    redirect_to "/ideas/#{i.id}"
  end
  def show
    @idea = Idea.find_by_id(params['id'])
    if @idea == nil
      redirect_to '/new_idea'
    else
    render 'show'
    end
  end
  def index
    @ideas = Idea.all
    
  end
  def edit
    @idea = Idea.find_by_id(params['id'])
    if @idea == nil
      redirect_to '/new_idea'
    else
      render 'edit'
    end
  end

  def update
    i = Idea.find_by_id(params['id'])
    i.name = params['name']
    i.idea = params['idea']
    i.tag = params['tag']
    i.save
    redirect_to "/ideas/#{i.id}"
  end

  def destroy
    i = Idea.find_by_id(params['id'])
    i.destroy
    redirect_to "/ideas"
  end

end
