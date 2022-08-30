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
    logout() {
      this.$auth.logout();
      // この際 Store をクリアするなど？
    }
  }
}
</script>
