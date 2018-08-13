class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(post)
    @post = post
    @text = @post.text
    @username = @post.author
    @title = @post.title
    @time = @post.created_at.to_formatted_s(:time) 
    mail to: @post.user.email,
        subject: "New post by #{@username}"
  end
end
