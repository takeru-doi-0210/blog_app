<template>
  <div>
    <h1>Homeページ</h1>
    <v-btn 
      @click="getUserIndex"
      depressed
      >ユーザ一覧を表示</v-btn>
    <div v-for="user in users" v-bind:key="user.id">
      <p>
        {{user.name}} 
        <br>
        {{user.email}} 
      </p>
    </div>
  </div>
</template>

<script>
export default{
  data: () => {
    return {
      message: '',
      users: [],
    }
  },
  methods: {
    getUserIndex() {
      this.$axios.get("http://localhost:3000/api/v1/index")
      .then((res) => {
        this.users = res.data
      })
      .catch((error) => {
        console.log(error)
      })
    }
  }

}
</script>
