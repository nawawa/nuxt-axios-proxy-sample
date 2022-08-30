<template>
<div>
  <p @click="getUser">{{ name }}</p>
  <NuxtLink to="/login">ログイン</NuxtLink>

  <button @click="logout">ログアウト</button>
</div>
</template>

<script>
export default {
  data: () => ({
    name: '名前',
  }),
  methods: {
    async getUser() {
      await this.$axios.$get('/api/user')
        .then((data) => {
          this.name = data.name
        })
        .catch((err) => {
          console.log(err)
        })
    },
    async logout() {
      await this.$auth.logout()
        .then((data) => {
          console.log('こちらですよ')
          console.log(data)
        })
        .catch((err) => {
          console.log(err)
        })
    }
  }
}
</script>
