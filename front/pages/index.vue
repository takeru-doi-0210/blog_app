<template>
  <div>
    <h1>Homeページ</h1>
    <button @click="getApi()">GET API</button>
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
      const url = "/api/v1/hello"
      this.$axios.get(url)
      .then((res) => {
        this.message = "aaa"
      })
      .catch((error) => {
        console.log(error)
      })
    }
  }

}
</script>
