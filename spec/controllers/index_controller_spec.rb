require 'rails_helper'

RSpec.describe IndexController, type: :controller do

    describe "GET index" do
        before(:each) do
            user = User.create!(
                provider: 'Facebook',
                name: 'test_user',
                uid: 12345)
            session[:user_id] = user.id
            @current_user = user.id
            event = Event.create!(
                title: 'testevent', 
                location: 'here',
                time: '',
                authorID: user.uid,
                datetime: '')
        end
        
        
        it "assigns @events" do
            event = Event.paginate(:page => 1).order('created_at DESC')
            get :index, :page => 1
            expect(assigns(:events)).to eq(event)
        end
        
    end
    
    describe "POST add" do
        before(:each) do
            user = User.create!(
                provider: 'Facebook',
                name: 'test_user',
                uid: 12345)
            session[:user_id] = user.id
            event = Event.create!(
                title: 'testevent', 
                location: 'here',
                time: '',
                authorID: user.uid,
                datetime: '')
        end
        
       it "creates event" do
           post :add, :title => 'testevent', :location => 'here', :time => '', :date =>  ''
           
       end
       
       it 'redirects to index' do
           post :add, :title => 'testevent', :location => 'here', :time => '', :date =>  ''
           expect(response).to redirect_to('/index/index')
       end
        
    end
    
    describe "DELETE destroy" do
       before(:each) do
            user = User.create!(
                provider: 'Facebook',
                name: 'test_user',
                uid: 12345)
            session[:user_id] = user.id
            event = Event.create!(
                title: 'testevent', 
                location: 'here',
                time: '',
                authorID: user.uid,
                datetime: '')
        end
       
       
       it 'redirects to index' do
           delete :destroy, :id => 1
           expect(response).to redirect_to('/index/index')
       end
        
    end
    
    describe "GET edit" do
       before(:each) do
            user = User.create!(
                provider: 'Facebook',
                name: 'test_user',
                uid: 12345)
            session[:user_id] = user.id
            event = Event.create!(
                title: 'testevent', 
                location: 'here',
                time: '',
                authorID: user.uid,
                datetime: '')
        end
       
       
       it 'redirects to index' do
           get :edit, :id => 1
           expect(response).to redirect_to(edit_path(:id => 1, :anchor => 'editEvents'))
       end
        
    end
    
     describe "POST change" do
       before(:each) do
            user = User.create!(
                provider: 'Facebook',
                name: 'test_user',
                uid: 12345)
            session[:user_id] = user.id
            event = Event.create!(
                title: 'testevent', 
                location: 'here',
                time: '',
                authorID: user.uid,
                datetime: '')
        end
       
       
       it 'redirects to index' do
           post :change, :title => 'testevent', :location => 'here', :time => '', :date =>  '', :eid => 1
           expect(response).to redirect_to('/index/index')
       end
        
    end
    
    describe "POST makerequest" do
        before(:each) do
            user = User.create!(
                provider: 'Facebook',
                name: 'test_user',
                uid: 12345)
            event = Event.create!(
                    title: 'testevent', 
                    location: 'here',
                    time: '',
                    authorID: user.uid,
                    datetime: '')
            user2 = User.create!(
                    provider: 'Facebook',
                    name: 'test_user2',
                    uid: 54321)
            Event.find(user.uid).users.push(user2)
        end
        
        it 'redirects to index' do
           post :change, :title => 'testevent', :location => 'here', :time => '', :date =>  '', :eid => 1
           expect(response).to redirect_to('/index/index')
       end
    end
    
    describe "DELETE deleteRequest" do
        #Event.find(params[:id]).users.delete(current_user)
    end

end
