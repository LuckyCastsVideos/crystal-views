<h1>Listing Books</h1>

<table>
  <thead>
    <tr>
      <th>Title</th>
      <th>Content</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    @foreach ($books as $book)
      <tr>
        <td>{{ book.title }}</td>
        <td>{{ book.content }}</td>
        <td>{{ link_to_route('books.show', 'Show', $book) }}</td>
        <td>{{ link_to_route('books.edit', 'Edit', $book) }}</td>
        <td>{{ link_to_route('books.destroy', 'Delete', $book) }}</td>
      </tr>
    @endforeach
  </tbody>
</table>
