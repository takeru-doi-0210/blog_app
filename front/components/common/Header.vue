<template>
  <v-card>
    <v-app-bar app>
        <v-btn href="/" depressed>Noteのパクリ</v-btn>
        <v-spacer />
      <v-btn icon>
        <v-icon>mdi-magnify</v-icon>
      </v-btn>

      <v-btn icon>
        <v-icon>mdi-heart</v-icon>
      </v-btn>
      <v-list class="pa-0">
        <v-btn nuxt href="login">ログイン</v-btn></v-btn>
        <v-btn nuxt href="create">新規登録</v-btn></v-btn>
      </v-list>
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
    isHome() {
      /*global location*/
      return location.pathname == "/"
    }
  }
}
</script>