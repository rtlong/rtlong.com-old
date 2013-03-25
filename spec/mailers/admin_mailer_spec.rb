require 'spec_helper'

describe AdminMailer do
  describe 'new_login' do
    let(:mail) { AdminMailer.new_login }

    it 'renders the headers' do
      mail.subject.should eq('New login')
      mail.to.should eq(['to@example.org'])
      mail.from.should eq(['from@example.com'])
    end

    it 'renders the body' do
      mail.body.encoded.should match('Hi')
    end
  end

end
