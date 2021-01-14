<template>
  <div class="container">
    <h1>Projects</h1>
    <p>Projects I participated in and/or developed.</p>

    <GitHubCard
      title="📈 Covid 19 Stats Tracker (for Zimbabwe)"
      link="https://github.com/flutterdevzim/CoVID-19-Tracker"
      :info="c19tracker"
      :loading="loading"
    >
      <p>
        App to stay updated with the latest events regarding the Coronavirus.
      </p>
    </GitHubCard>

    <GitHubCard title="📖 BulkSmsZw" link="https://github.com/iamngoni/bulksmszw" :info="bulksmszw" :loading="loading">
      <p>
        A Helper Library For Sending Text Messages For BulkSmsZimApi
      </p>
    </GitHubCard>

    <GitHubCard
      title="💡 Floating Navbar"
      link="https://github.com/iamngoni/floating_navbar"
      :info="floating_navbar"
      :loading="loading"
    >
      <p>
        Simple Flutter Floating Navbar package
      </p>
    </GitHubCard>

    <GitHubCard
      title="🇿🇼 Made-In-Zwe"
      link="https://github.com/iamngoni/made-in-zwe"
      :info="madeinzwe"
      :loading="loading"
    >
      <p>A curation of awesome tools , apps and projects built by Zimbabwean developers</p>
    </GitHubCard>

    <GitHubCard
      title="® localregex"
      link="https://github.com/iamngoni/localregex"
      :info="localregex"
      :loading="loading"
    >
      <p>Dart implementation of Michael Dera's simple-regex typescript package</p>
    </GitHubCard>

    <GitHubCard
      title="🍇 Fresh Idea"
      link="https://github.com/iamngoni/freshidea"
      :info="freshidea"
      :loading="loading"
    >
      <p>Simple Flutter implementation of Fresh Ideas' Fresh Account Mobile Application</p>
    </GitHubCard>

    <GitHubCard
      title="🏫 HitPrintShop"
      link="https://hitprintshop.netlify.app/"
      :info="hitprintshop"
      :loading="loading"
    >
      <p>Online Assignment Submission And Printing for HIT students</p>
    </GitHubCard>

    <GitHubCard
      title="🗺 Easy Locate"
      link="https://github.com/iamngoni/Easy-Locate"
      :info="easylocate"
      :loading="loading"
    >
      <p>Product Locator Mobile Application in Flutter</p>
    </GitHubCard>
  </div>
</template>

<script>
import GitHubCard from '@/components/GitHubCard.vue'

export default {
  components: {
    GitHubCard,
  },
  data() {
    return {
      loading: true,
      c19tracker: {
        stargazers_count: 0,
        forks_count: 0,
      },
      bulksmszw: {
        stargazers_count: 0,
        forks_count: 0,
      },
      floating_navbar: {
        stargazers_count: 0,
        forks_count: 0,
      },
      madeinzwe: {
        stargazers_count: 0,
        forks_count: 0,
      },
      localregex: {
        stargazers_count: 0,
        forks_count: 0,
      },
      freshidea: {
        stargazers_count: 0,
        forks_count: 0,
      },
      hitprintshop: {
        stargazers_count: 0,
        forks_count: 0,
      },
      easylocate: {
        stargazers_count: 0,
        forks_count: 0,
      },
    }
  },
  mounted() {
    const githubApiUrl = 'https://api.github.com/repos'

    const c19trackerAxios = this.axios.get(`${githubApiUrl}/flutterdevzim/CoVID-19-Tracker`)
    const bulksmszwAxios = this.axios.get(`${githubApiUrl}/iamngoni/bulksmszw`)
    const floatingAxios = this.axios.get(`${githubApiUrl}/iamngoni/floating_navbar`)
    const madeInZweAxios = this.axios.get(`${githubApiUrl}/iamngoni/made-in-zwe`)
    const localRegexAxios = this.axios.get(`${githubApiUrl}/iamngoni/localregex`)
    const freshIdeaAxios = this.axios.get(`${githubApiUrl}/iamngoni/freshidea`)
    const easyLocateAxios = this.axios.get(`${githubApiUrl}/iamngoni/Easy-Locate`)

    this.axios
      .all([c19trackerAxios, bulksmszwAxios, floatingAxios, madeInZweAxios, localRegexAxios, freshIdeaAxios, easyLocateAxios])
      .then(
        this.axios.spread((...resp) => {
          this.loading = false
          this.c19tracker = resp[0].data
          this.bulksmszw = resp[1].data
          this.floating_navbar = resp[2].data
          this.madeinzwe = resp[3].data
          this.localregex = resp[4].data
          this.freshidea = resp[5].data
          this.easylocate = resp[6].data
        }),
      )
      .catch(err => {
        this.loading = false
        // eslint-disable-next-line no-console
        console.error(err)
      })
  },
}
</script>

<style scoped>
.container .github-project-card:not(:last-child) {
  margin-bottom: 40px;
}
</style>
