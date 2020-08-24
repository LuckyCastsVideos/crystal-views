h1 Listing Books

table
  thead
    tr
      th Title
      th Content
      th colspan="3"

  tbody
    - books.each do |book|
      tr
        td = book.title
        td = book.content
        td = link "Show", to: Books::Show.with(book)
        td = link "Edit", to: Books::Edit.with(book)
        td = link "Delete", to: Books::Delete.with(book)
