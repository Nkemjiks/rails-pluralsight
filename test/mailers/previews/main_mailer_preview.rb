# Preview all emails at http://localhost:3000/rails/mailers/main_mailer
class MainMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/main_mailer/notify_question_author
  def notify_question_author
    question = Question.create email: 'someone@gmail.com', body: 'Is this right'
    answer = Answer.create email: 'some@gmail.com', body: 'This is wrong.'

    question.answer << answer
    MainMailer.notify_question_author(answer)
  end

end
