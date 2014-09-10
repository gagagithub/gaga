#encoding: utf-8
class UserController < ApplicationController

def index
end

def login
    @user=User.find_by_user_email(params[:user_email])
    if params[:user_email]==params[:password]
       render :json => "yqm".to_json  #zhu ce
    elsif @user!=nil
      if @user.password==params[:password]
          session[:webusername]=@user.user_email
          render :json => "s".to_json      #deng lu cheng gong
      else
        render :json => "pf".to_json  #mi ma cuo wu
      end
    else
      render :json => "f".to_json  #yong hu bu cun zai
    end
end

def signup
end

def sign_up
    @user=User.find_by_user_email(params[:user_email])
    if @user==nil && params[:user_email]!="" && params[:user_email]!=nil
        User.new do |w|
          w.user_email=params[:user_email]
          w.password=params[:password]
          w.user_name=params[:user_name]
          w.save
        end
        render :json => "s".to_json
    else
        render :json => "f".to_json
    end
end

def personal
end


def userlogout
    session[:webusername]=nil
    render :json => "s".to_json
end

end
