<template>
    <v-toolbar app>
        <v-toolbar-title>Title</v-toolbar-title>
        <v-spacer />
        <v-toolbar-items v-for="item in items" :key="item.id">
             <v-btn>{{item.title}}</v-btn>
         </v-toolbar-items>
    </v-toolbar>
</template>


<script>
export default {
  data() {
    return {
      items: [
        {id: 1, title: "ログイン"},
        {id: 2, title: "アカウント作成"}
      ] 
    }
  }
}
</script>