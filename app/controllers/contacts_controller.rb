class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    #puts "***********************"
    #puts params 

    fname = params[:contact][:fname]
    lname = params[:contact][:lname]
    company = params[:contact][:company]
    city = params[:contact][:city]
    state = params[:state]
    job_title = params[:contact][:job_title]
    email = params[:contact][:email]
    phone = params[:contact][:phone]
    num_employees = params[:contact][:num_employees]
    message = params[:contact][:message]
    # id = session[:user_id]
    @Contact = Contact.create(fname: fname, lname: lname, company: company, city: city, state: state, 
    	job_title: job_title, email: email, phone: phone, num_employees: num_employees, message: message)

    # @contact = Contact.create(params.require(:post).permit(:fname, :message, :user_id))
    # flash[:notice] = "Contact Successfully Created by User # #{id}"
    flash[:alert] = 'Successfully Submitted Contact Form'
    redirect_to root_path
  end

  def show
   #  @likeAmount = Contactlike.all.count
  	# @contact = Contact.find(params[:id])
  	# @comment = Comment.where(post_id: params[:id])
   #  #same as @comment but want to break it up for an easier read
   #  #@commentcomment = Commentoncomment.where(comment_id: params[:id])
   #  @counter = 0
   #  @counter2 = 0
   #  @newComment = Comment.new
   #  @newCommentonComment = Commentoncomment.new
  end

  # def like
  #   @liked = Contactlike.create(user_id:session[:user_id], post_id:params[:apple])
  #   @likeAmount = Contactlike.all.count
  #   puts params
  #   render :layout => false
  # end
end