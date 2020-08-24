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

          td do
            link to: Books::Show
          end

          td do
            link to: Books::Edit.with(book)
          end

          td do
            link to: Books::Destroy.with(book), data_confirm: "Are you sure?"
          end
        end
      end
    end
  end
end
