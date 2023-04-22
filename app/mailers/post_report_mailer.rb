class PostReportMailer < ApplicationMailer

  def post_report(user, post, post_report)
    @post = post
    mail to: user.email, subject: "Reporte de post con id #{post.id}"
  end
end
