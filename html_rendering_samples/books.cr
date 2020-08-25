class Books::IndexPage < MainLayout
  needs books : BooksQuery

  def content
    h1 "Listing Books"

    table do
      thead do
        th "Title"
        th "Content"
        th colspan: 3
      end

      tbody do
        books.each do |book|
          td book.title
          td book.content
          td { link to: Books::Show }
          td { link to: Books::Edit.with(book) }
          td { link to: Books::Destroy.with(book), data_confirm: "Are you sure?" }
        end
      end
    end
  end
end
