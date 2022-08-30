<template>
  <p @click="login">{{ name }}</p>
</template>

<script>
export default {
  data: () => ({
    name: 'ログイン',
  }),
  methods: {
    login() {
      this.$auth.loginWith(this.$config.AUTH_SCHEME, {
        data: { 
          loginId: 'this.loginId', 
          password: 'this.password' 
        }
      })
        .then((data) => {
          this.name = data.data.name
        })
        .catch((err) => {
          console.log(err)
        })
    }
  }
}
</script>