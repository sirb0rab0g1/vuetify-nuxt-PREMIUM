<template>
  <v-layout scroll-y>
    <v-flex xs12 sm6 offset-sm3>
      <v-card>
        <v-img
          src="https://scontent-hkg3-1.xx.fbcdn.net/v/t1.0-9/50962081_2489893494371669_7005056183346135040_o.jpg?_nc_cat=111&_nc_ht=scontent-hkg3-1.xx&oh=f34d6cde9793704ce8d60b9823688f11&oe=5CE34CFB"
          aspect-ratio="2.75"
        ></v-img>

        <v-card-title primary-title>
          <div>
            <h1 class="headline mb-4">VUETIFY + NUXT (PREMIUM VERSION)</h1>

            <h3>PURPOSE: to make ease of every new dev to adopt the standard implementation vue + nuxt with a lots of feature. </h3>

            <v-layout align-center>
              <v-item-group
                v-model="window"
                class="shrink mr-4"
                mandatory
                tag="v-flex"
              >
                <v-item
                  v-for="n in length"
                  :key="n"
                >
                  <div slot-scope="{ active, toggle }">
                    <v-btn
                      :input-value="active"
                      icon
                      @click="toggle"
                    >
                      <v-icon>book</v-icon>
                    </v-btn>
                  </div>
                </v-item>
              </v-item-group>

              <v-flex>
                <v-window
                  v-model="window"
                  class="elevation-1"
                  vertical
                >
                  <v-window-item
                    v-for="n in length"
                    :key="n"
                  >
                    <v-card flat>
                      <v-card-text>
                        <v-layout align-center mb-3>
                          <v-avatar color="grey" class="mr-3"></v-avatar>
                          <strong class="title">{{ n == 1 ? 'Featues Added' : n == 2 ? 'Installation' : 'eut'}}</strong>
                          <v-spacer></v-spacer>
                          <v-btn icon>
                            <v-icon>book</v-icon>
                          </v-btn>
                        </v-layout>

                        <v-flex xl12 lg12 md sm12 xs12 v-if="n == 1">
                          MAJOR FEATURES I ADDED IN DEFAULT VUETIFY TEMPLATE
                          <ul>
                            <li @click="goTo('https://vuex.vuejs.org/')">VUEX</li>
                            <li @click="goTo('https://axios.nuxtjs.org/')">NUXT/AXIOS</li>
                            <li @click="goTo('https://github.com/nuxt-community/modules')">NUXT/COMPONENT-CACHE</li>
                            <li @click="goTo('https://github.com/nuxt-community/moment-module')">NUXT/MOMENT</li>
                            <li @click="goTo('https://zhanziyang.github.io/vue-croppa/')">VUE-CROPPA</li>
                            <li @click="goTo('https://github.com/euvl/vue-js-modal')">VUE-JS-MODEL(alternative)</li>
                            <li @click="goTo('https://github.com/simple-uploader/vue-uploader')">VUE-SIMPLE-UPLOADER</li>
                            <li @click="goTo('https://github.com/hiyali/vue-smooth-picker')">VUE-SMOOTH PICKER(IOS LOOK DATEPICKER)</li>
                            <li @click="goTo('https://github.com/robinvdvleuten/vuex-persistedstate')">VUEX-PERSISTED STATE</li>
                            
                          </ul>

                          <code> <!-- keep at this look -->
    "dependencies": {
      "@fortawesome/fontawesome": "^1.1.8",
      "@fortawesome/fontawesome-free-brands": "^5.0.13",
      "@fortawesome/fontawesome-svg-core": "^1.2.8",
      "@fortawesome/free-brands-svg-icons": "^5.5.0",
      "@fortawesome/free-regular-svg-icons": "^5.5.0",
      "@fortawesome/free-solid-svg-icons": "^5.5.0",
      "@fortawesome/vue-fontawesome": "^0.1.2",
      "@nuxtjs/axios": "^5.3.3",
      "@nuxtjs/component-cache": "^1.1.3",
      "@nuxtjs/moment": "^1.1.0",
      "@nuxtjs/pwa": "^2.6.0",
      "axios": "^0.18.0",
      "moment": "^2.24.0",
      "nuxt": "^2.2.0",
      "vue-croppa": "^1.3.8",
      "vue-js-modal": "^1.3.27",
      "vue-simple-uploader": "^0.6.0",
      "vue-smooth-picker": "^0.3.9",
      "vuetify": "^1.5.3",
      "vuetify-loader": "^1.0.5",
      "vuex": "^3.1.0",
      "vuex-persistedstate": "^2.5.4"
    },
                          </code>
                        </v-flex>

                        <v-flex xl12 lg12 md12 sm12 xs12 v-if="n == 2">
                          <v-flex xl12 lg12 md12 sm12 xs12 mb-4>
                          <v-flex lg12 md12 sm12 xs12>
                            <b>For Mac / Linux</b>
                          </v-flex>
                          <code>
    > npm install (to install dependencies)
    > make lan (dynamic configuration between port and ip)
                          </code><br>
                          <small>
                            REASON: i use pytho3 + makefile so that the ip and port will be dynamic. not like npm run dev. you will put the ip and port manually.
                          </small>


                          </v-flex>

                          <v-flex xl12 lg12 md12 sm12 xs12>
                          <v-flex lg12 md12 sm12 xs12>
                            <b>For Windows</b>
                          </v-flex>
                          <code>
    > npm install (to install dependencies)
    > npm run dev (default ip and port)
                          </code>
                          </v-flex>
                        </v-flex>
                      </v-card-text>
                    </v-card>
                  </v-window-item>
                </v-window>
              </v-flex>
            </v-layout>
          </div>
        </v-card-title>
      </v-card>
    </v-flex>
  </v-layout>
</template>

<script>
  export default {
    data: () => ({
      length: 3,
      window: 0
    }),
    methods: {
      goTo (payload) {
        window.location.href = payload
      }
    }
  }
</script>