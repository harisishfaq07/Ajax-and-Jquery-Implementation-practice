class ArticleMailer < ApplicationMailer

    default from: 'haris@isoftstudios.com'

  def new_article(resource)
   
    @user = resource
   @user.each do |a|
    @u = a.email
    if @u != "haris1@example.com"
    mail(to: @u, subject: 'New Article Created')
    end
   end
  end
end
