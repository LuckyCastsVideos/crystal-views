<template>
  <table>
    <thead>
      <tr>
        <th>Title</th>
        <th>Content</th>
        <th colspan="3"></th>
      </tr>
    </thead>

    <tbody>
      <tr v-for="book in books">
        <td>{{ book.title }}</td>
        <td>{{ book.content }}</td>
        <td><router-link :to="{ path: 'book', params: { bookId: book.id }">Show</router-link></td>
        <td><router-link :to="{ path: 'bookEdit', params: { bookId: book.id }">Edit</router-link></td>
        <td><router-link :to="{ path: 'bookDelete', params: { bookId: book.id }">Delete</router-link></td>
      </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  data () {
    return {
      books: [
        ...some books
      ]
    }
  },
}
</script>
