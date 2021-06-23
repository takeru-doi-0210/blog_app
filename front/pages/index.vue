<template>
  <div>
    <h1>Homeページ</h1>
    <v-btn 
      @click="getUserIndex"
      depressed
      >ユーザ一覧を表示</v-btn>
    <div v-for="user in users" v-bind:key="user.name">
      <div v-for="post in posts" v-bind:key="post.content">
        <p>
         {{user.name}} 
         <br>
         {{user.email}} 
         <br>
         {{post.content}}
       </p>
      </div>
    </div>
  </div>
</template>

<script>
export default{
  data: () => {
    return {
      message: '',
      total: [],
      users: [],
      posts: [],
    }
  },
  // methods: {
  //   getUserIndex() {
  //     this.$axios.get("http://localhost:3000/api/v1/index")
  //     .then((res) => {
  //       this.total = res.data
  //       this.users = this.total[0]
  //       this.posts = this.total[1]
  //     })
  //     .catch((error) => {
  //       console.log(error)
  //     })
  //   }
  // },

  mounted: function() {
    this.$axios.get("http://localhost:3000/api/v1/index")
      .then((res) => {
        this.total = res.data
        this.users = this.total[0]
        this.posts = this.total[1]
      })
      .catch((error) => {
        console.log(error)
      })
  }

}
</script>
