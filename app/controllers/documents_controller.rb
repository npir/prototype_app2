class DocumentsController < ApplicationController

  def upload
  	
  	crocodoc = Crocodoc::API.new(:token => 'JNVoqDgLrazjhp1lCT8byA2S')
  	doc = crocodoc.upload(params[:my_file])   
  end
  
  def show
  end
end
