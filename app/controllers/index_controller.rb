class IndexController < ApplicationController
  def show
  end
  
  def index
    @events = Event.paginate(:page => params[:page]).order('created_at DESC')
    @myevents = Event.where(authorID: current_user.uid).paginate(:page => params[:page]).order('created_at DESC')
    @requests = current_user.events.paginate(:page => params[:page]).order('created_at DESC')
  end
  
  def add
    name = params[:name]
    location = params[:location]
    time = params[:time]
    datetime = params[:date]+ " " + params[:time]

    Event.create!(
      title: name, 
      location: location,
      time: time,
      authorID: current_user.uid,
      datetime: datetime
    )
    flash[:notice] = "Event successfully posted!"
    redirect_to "/index/index"
  end

  def destroy
    Event.find(params[:id]).delete
    redirect_to '/index/index'
  end
  
  def edit
    @eventedit = Event.find(params[:id])
    puts @eventedit.title
    redirect_to edit_path(:id => params[:id], :anchor => 'editEvents')
    #render :text => @eventedit.title
  end
  
  def change
    name = params[:name]
    location = params[:location]
    time = params[:time]
    eid = params[:eid]
    Event.update(
      eid,
      title: name, 
      location: location,
      time: time
    )
    redirect_to '/index/index'
  end
  
  def makerequest
    Event.find(params[:id]).users.push(current_user)
    
    #flash[:notice] = "Request successfully sent!"
    redirect_to "/index/index"
  end
  
  def deleteRequest
    Event.find(params[:id]).users.delete(current_user)
    
    redirect_to '/index/index'
  end
  
  
end