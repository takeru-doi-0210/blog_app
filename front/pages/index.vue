<template>
  <div>
    <h1>{{message}}</h1>
    <NuxtLink to="inspire">to inspire page</NuxtLink>
  </div>
</template>

<script>
export default {
  data: () => {
    return {
      message: 'hello'
    }
  },
}
</script>
