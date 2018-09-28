# frozen_string_literal: true

require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test 'notify_question_author' do
    question = Question.create email: 'someone@gmail.com', body: 'Is this right'
    answer = Answer.create email: 'some@gmail.com', body: 'This is wrong.'

    question.answer << answer

    mail = MainMailer.notify_question_author(answer)
    assert_equal 'New Answer to Your Question', mail.subject
    assert_equal [question.email], mail.to
    assert_equal [answer.email], mail.from
    assert_match answer.body, mail.body.encoded
  end
end
