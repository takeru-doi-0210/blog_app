<template>
  <div>
    <v-btn
      @click="getApi()"  
    >
     GET API
    </v-btn>
    <div>
      {{ message }}
    </div>
  </div>
</template>

<script>
export default {
  data: () => {
    return {
      message: ''
    }
  },
  methods: {
    getApi() {
      this.$axios.get('http://localhost:8080/api/v1/hello')
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
