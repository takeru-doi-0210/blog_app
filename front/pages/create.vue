<template>
    <v-container>
        <v-row>
            <v-col>
                <v-container>
                    <h1>noteにようこそ！</h1>
                    <p>noteは、創作をする人、それを応援する人、ものづくりが好きなみんなのための街のような場所。</p>
                    <p>好みのクリエイターやコンテンツを見つけたり、自分のつくりたいものをつくったりして楽しめます。</p>
                    <p>いっしょに、創作の輪を広げていきましょう。</p>
                </v-container>
            </v-col>
            <v-col>
                <v-card max-width="374" outlined class="pa-5">
                    <v-form>
                        <v-card-title>noteに登録する</v-card-title>
                        <v-text-field label="noteさん" color="#2cb696"></v-text-field>
                        <v-text-field label="note_id" color="#2cb696"></v-text-field>
                        <v-text-field label="mail@note.com" color="#2cb696"></v-text-field>
                        <v-text-field label="password" color="#2cb696"></v-text-field>
                        <v-btn depressed color="#2cb696" class="white--text" width="100%">登録する（無料）</v-btn>
                    </v-form>
                </v-card>
            </v-col>
        </v-row>
    </v-container>
</template>

<script>
    export default {
    }
</script>