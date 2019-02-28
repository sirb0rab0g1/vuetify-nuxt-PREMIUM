<template>
  <div>
    <h1>here will be the graphql nuxt example</h1>

    <v-text-field v-model="myid" /> <v-btn @click="submit"> submit </v-btn>


    <h2>
      all users
    </h2>
    <ul>
      <li v-for="(item, index) in all_detailed_users" :key="index">
        {{ item }}
      </li>
    </ul>



    <h2>
      single user
    </h2>
    <ul>
      <li>
        {{ user }}
      </li>
    </ul>

    <h2>
      all users
    </h2>
    <li v-for="(item, index) in  all_users" :key="index">
      {{ item }}
    </li>

    <h2>single user</h2>
    <ul>
      <li>
        {{ single_user }}
      </li>
    </ul>

  </div>
</template>

<script>
  /* eslint-disable */

  import gql from 'graphql-tag'

  export default {
    data: () => ({
      myid: null,
      user: {}
    }),
    methods: {
      submit () {
        let query = gql `query tagList ($id: Int!) {
          single_detailed_user (id: $id) { # fetching individual user
            id,
            first_name,
            last_name,
            email,
            profile {
              address,
              contact_number,
              age
            }
          }
        }`
        this.$apollo.query({query: query, variables: {id: this.myid}}).then(data => {
          console.log(data.data.single_detailed_user)
          this.user = Object.assign({}, this.user, data.data.single_detailed_user)
        })
      }
    },
    computed: {
      submitVariables () {
        return {id: this.id}
      }
    },
    apollo: { /* GRAPHQL IMPLEMENTATION */
      all_detailed_users: {
        query: gql `query {
          all_detailed_users { # fetching all users
      	    id
            username,
            first_name,
            last_name,
            email,
            profile {
              address,
              contact_number,
              age
            }
          }
        }`,
        variables () {
          // console.log(this.allDetailedUsers)
        }
      },
      all_users: {
        query: gql `query {
          all_users { # fetching individual user
            id,
            address,
            contact_number,
            age
          }
        }`,
        variables () {
          // console.log(this.allUsers)
        },
      },
      single_user: {
        query: gql `query {
          single_user (id: 1) { # fetching individual user
            id,
            address,
            contact_number,
            age
          }
        }`,
        variables () {
          // console.log(this.singleUser)
        },
      }
    }
  }
</script>
