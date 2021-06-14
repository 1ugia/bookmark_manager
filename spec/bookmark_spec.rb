require 'bookmark'

describe Bookmarks do

  describe '#list' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmarks.list
      expect(bookmarks).to eq ['https://github.com/', 'https://www.youtube.com/user/pokemon']
    end
  end

end
