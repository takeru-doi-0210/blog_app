<template>
  <v-card>
    <v-app-bar app>
        <v-btn href="/" depressed>Noteのパクリ</v-btn>
        <v-spacer />
        <v-btn icon>
          <v-icon>mdi-magnify</v-icon>
        </v-btn>
        <v-btn nuxt href="login" depressed>ログイン</v-btn></v-btn>
        <v-btn nuxt href="create" color="#2cb696" class="white--text" depressed>新規登録</v-btn></v-btn>
      <template v-slot:extension v-if="isHome">
        <v-tabs align-with-title>
          <v-tab>ホーム</v-tab>
          <v-tab>話題</v-tab>
          <v-tab>募集中</v-tab>
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
    }
  },
  computed: {
    /*global location*/
    isHome() {
      return location.pathname == "/"
    },
  }
}
</script>