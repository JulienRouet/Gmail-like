class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def create
    @email = Email.create(object: Faker::Book.title, body: Faker::Lorem.paragraph_by_chars, read: false)

    respond_to do |format|
      format.html {redirect_to emails_path}
      format.js { }
    end
  end

  def show
    @email = Email.find(params[:id])

    respond_to do |format|
      format.html {redirect_to email_path(@email)}
      format.js { }
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
      format.html {redirect_to root_path}
      format.js {}
    end
  end

  def update
    @email = Email.find(params[:id])
    @email.read = false
    @email.save

    respond_to do |format|
        format.html {redirect_to root_path}
        format.js {}
    end
  end
end
