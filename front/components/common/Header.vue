<template>
  <v-card>
    <v-app-bar flat>
        <v-btn href="/" depressed>Noteのパクリ</v-btn>
        <v-spacer />
        <v-btn icon>
          <v-icon>mdi-magnify</v-icon>
        </v-btn>
        <v-btn nuxt href="login" depressed>ログイン</v-btn></v-btn>
        <v-btn nuxt href="create" color="#2cb696" class="white--text" depressed>新規登録</v-btn></v-btn>
      <template v-slot:extension>
        <v-tabs align-with-title v-model="tab">
          <v-tab v-for="text in texts" :key="text.id" nuxt link :to="text.url">{{text.title}}</v-tab>
        </v-tabs>
      </template>
    </v-app-bar>
  </v-card>
</template>


<script>
/*global $*/
export default {
  data() {
    return {
      tab: null,
      items: ["HOME", "話題", "サークル"],
      texts: [
        {title: "1", url: "/"},
        {title: "2", url: "/recommend"},
        {title: "3", url: "/circle"},
      ]
    }
  },
  computed: {
    /*global location*/
    // isHome() {
    //   return location.pathname == "/"
    // },
  }
}
</script>