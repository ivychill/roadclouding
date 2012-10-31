require 'httparty'

class WeibosController < ApplicationController
  include HTTParty
  def post
#    @user = User.find_for_weibo_oauth2(request.env["omniauth.auth"], current_user)
#    response = HTTParty.post('https://api.weibo.com/2/statuses/update.json?status=路易95路况信息准确及时。+1！赞！顶！下载请到http://www.roadclouding.com')
#    puts response.body, response.code, response.message, response.headers.inspect
   
#    options = { :body => {:status => text} }
#    self.class.post('https://api.weibo.com/2/statuses/update.json', options)
    user = User.where(:provider => "weibo").first
    if user
      logger.info "param: #{params.inspect}"
      @text = params[:text]
      @urlstring_to_post = 'https://api.weibo.com/2/statuses/update.json'
      @result = HTTParty.post(@urlstring_to_post.to_str, 
      :body => {
          :access_token => user[:visit_token],
          :status => @text
        }.to_json )
      logger.info "post return: #{@result.inspect}"
    else
      redirect_to '/users/auth/weibo' 
    end
  end
  
  def get
    @user = User.where(:authentication_token => current_user.authentication_token).first
    respond_to do |format|
      format.xml {
        render :xml => { :visit_token => @user.visit_token, :expires_at => @user.expires_at, :will_expire => @user.will_expire }
      } 
      format.json {
        render :json => { :visit_token => @user.visit_token, :expires_at => @user.expires_at, :will_expire => @user.will_expire }
      }
    end
  end
end
