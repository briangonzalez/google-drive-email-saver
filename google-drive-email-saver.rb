
require "google_drive"

class GoogleDocsEmailSaver

  def initialize(email, password, key)
    @key = key
    @session = GoogleDrive.login(email, password)
  end

  def spreadsheet
    @ss ||= @session.spreadsheet_by_key(@key)
  end

  def worksheet(index=0)
    @ws ||= spreadsheet.worksheets[index]
  end

  def next_index
    worksheet.num_rows + 1
  end

  def save_email(email="")
    worksheet.reload
    worksheet[next_index, 1] = email
    worksheet.synchronize
  end

end