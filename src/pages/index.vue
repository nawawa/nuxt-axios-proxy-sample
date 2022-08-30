<template>
<div>
  <p @click="getUser">{{ name }}</p>
  <NuxtLink to="/login">ログイン</NuxtLink>
</div>
</template>

<script>
export default {
  data: () => ({
    name: '名前',
  }),
  methods: {
    getUser() {
      this.$axios.$get('/api/user')
        .then((data) => {
          this.name = data.name
        })
        .catch((err) => {
          console.log(err)
        })
    }
  }
}
</script>
