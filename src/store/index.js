export const actions = {
  async nuxtServerInit({state}, { app }) {

    await app.$axios
      .$get('/api/user')
      .then((authUser) => {
        console.log(authUser)
        app.$auth.setUser(authUser)
      })
      .catch((err) => {
        console.log(err)
        console.log('エラーっすよ')
        app.$auth.setUser(null)
      })

  }
}