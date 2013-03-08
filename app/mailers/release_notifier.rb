class ReleaseNotifier < ActionMailer::Base
  default from: 'Street Date <no-reply@streetdate.info>'

  def notify(user)
    @user = user
    mail to: user[0].email, subject: "You have new albums out today!"
    #mail(to: user[0].email, subject: "You have new albums out today!") do |format|
    #  format.html { render :layout => 'test_layout' }
    #  format.text 
    #end
  end

  def admin_notify(today)
    @today = today
    mail to: 'eli@streetdate.info', subject: "Release notifications sent"    
  end  
end
