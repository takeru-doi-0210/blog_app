<template>
  <div>
    <p>{{message}}</p>
    <NuxtLink to="inspire">to index page</NuxtLink>
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
