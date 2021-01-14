<template>
  <div class="container">
    <h1>Social</h1>
    <p>Some of my followers.</p>

    <div class="col-container">
      <div class="row-container">
        <statCard
          statTitle="Telegram Channel"
          :followers="telegram.data"
          suffix="members"
          icon="telegram.png"
          :loading="telegram.loading"
          link="https://t.me/iamngoni"
        />
        <statCard
          statTitle="Twitter"
          :followers="twitter.data"
          suffix="followers"
          icon="twitter.png"
          :loading="twitter.loading"
          link="https://twitter.com/iamngoni_"
        />
      </div>
      <div class="row-container">
        <statCard
          statTitle="GitHub"
          :followers="github.data"
          suffix="followers"
          icon="github.png"
          :loading="github.loading"
          link="https://github.com/iamngoni"
        />
        <statCard
          statTitle="Medium"
          :followers="medium.data"
          suffix="readers"
          icon="medium.png"
          :loading="medium.loading"
          link="https://medium.com/ngonidzashemangudya"
        />
      </div>
    </div>
  </div>
</template>

<script>
import statCard from '@/components/StatCard.vue'

export default {
  components: {
    statCard,
  },
  data() {
    return {
      rss: { data: 0, loading: true },
      jike: { data: 0, loading: true },
      sspai: { data: 0, loading: true },
      zhihu: { data: 0, loading: true },
      weibo: { data: 0, loading: true },
      twitter: { data: 0, loading: true },
      medium: { data: 0, loading: true },
      github: { data: 0, loading: true },
      steamGames: { data: 0, loading: true },
      telegram: { data: 0, loading: true },
    }
  },
  mounted() {
    const apiUrl = 'https://api.spencerwoo.com/substats'
    const twitterAxios = this.axios.get(`${apiUrl}/?source=twitter&queryKey=iamngoni_`)
    const mediumAxios = this.axios.get(`${apiUrl}/?source=medium&queryKey=@imngonii`)
    const githubAxios = this.axios.get(`${apiUrl}/?source=github&queryKey=iamngoni`)
    const steamGamesAxios = this.axios.get(`${apiUrl}/?source=steamGames&queryKey=76561198336249957`)
    const telegramAxios = this.axios.get(`${apiUrl}/?source=telegram&queryKey=iamngoni`)
    twitterAxios.then(r => {
      this.twitter = { data: r.data.data.totalSubs, loading: false }
    })
    mediumAxios.then(r => {
      this.medium = { data: r.data.data.totalSubs, loading: false }
    })
    githubAxios.then(r => {
      this.github = { data: r.data.data.totalSubs, loading: false }
    })
    steamGamesAxios.then(r => {
      this.steamGames = { data: r.data.data.totalSubs, loading: false }
    })
    telegramAxios.then(r => {
      this.telegram = { data: r.data.data.totalSubs, loading: false }
    })
  },
}
</script>

<style lang="css" scoped>
.col-container {
  display: flex;
  flex-direction: column;
  flex-wrap: nowrap;
  justify-content: flex-start;
  align-items: stretch;
  align-content: center;
}

.row-container {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: center;
  align-items: stretch;
  align-content: stretch;
  margin: 15px 0px;
}

.row-container .statCard:last-child {
  margin-left: 30px;
}

.row-container .statCard {
  flex: 1;
}

@media screen and (max-width: 760px) {
  .row-container {
    display: flex;
    flex-direction: column;
    flex-wrap: nowrap;
    justify-content: flex-start;
    align-items: stretch;
    align-content: center;
  }

  .row-container .statCard:last-child {
    margin-left: 0px;
    margin-top: 30px;
  }
}

#substats-footer {
  color: #666666;
  text-align: left;
}
</style>
