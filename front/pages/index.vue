<template>
  <div>
    <h1>Homeページ</h1>
    <button @click="getApi">GET API</button>
    <p>{{message}}</p>
  </div>
</template>

<script>
export default{
  data: () => {
    return {
      message: '',
    }
  },
  methods: {
    getApi() {
      this.$axios.get("http://localhost:3000/api/v1/hello")
      .then((res) => {
        this.message = res.data
      })
      .catch((error) => {
        console.log(error)
      })
    }
  }

}
</script>
