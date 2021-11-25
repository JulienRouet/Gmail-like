class EmailsController < ApplicationController
  def index
    @emails = Email.all
    @emails = @emails.sort_by {|email| email.id}
  end

  def destroy
  end

  def show
  end

  def update
  end
end
