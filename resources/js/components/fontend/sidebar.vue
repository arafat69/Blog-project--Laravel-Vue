<template>
  <div class="sidebar-wrap">

    <div class="sidebar-widget card border-0 mb-3">
      <img :src="'uploads/'+sideContent.photo" width="100%"/>
      <div class="card-body p-4 text-center">
        <h5 class="mb-0">{{sideContent.name}}</h5>
        <p>{{sideContent.skill}}</p>
        <p v-html="sideContent.description"> 
         {{sideContent.description}}
        </p>

        <ul class="list-inline author-socials">
          <li v-for="icons in getSideIconList" :key="icons.id" class="list-inline-item mr-3">
            <a :href="icons.link" class="socialIcon"><i :class="icons.icon"></i></a>
          </li>
        </ul>
      </div>
    </div>

    <div class="sidebar-widget latest-post card border-0 p-4 mb-3">
      <h5>Latest Posts</h5>

      <div v-for="latest in latestposts" :key="latest.id" class="media border-bottom py-3">
        <a href="#"
          ><img class="mr-4" width="80" :src="'uploads/'+latest.file" alt=""
        /></a>
        <div class="media-body">
          <h6 class="my-2">
            <router-link :to="`/view/${latest.slug}`">{{latest.title}}</router-link>
          </h6>
        </div>
      </div>
    </div>

    <div class="sidebar-widget bg-white rounded tags p-4 mb-3">
      <h5 class="mb-4">Tags</h5>
      <router-link :to="`/categories/${category.name}`" class="mx-1" v-for="category in getCategoryList" :key="category.id">{{category.name}}</router-link>
    </div>
  </div>
</template>

<script>
export default {
    data:()=>({
        latestposts:{},
        sideContent:[]
    }),
mounted() {
    this.$store.dispatch('getSideIconList');
    this.$store.dispatch('getCategoryList')
    this.getLatestPost();
    axios.get('/sidebarcontent').then((response) => {
        // this.form.fill(response.data.sidebardContent)
        this.sideContent = response.data.sidebardContent
    });
},
computed: {
    getCategoryList(){
        return this.$store.getters.categoryList;
    },
    getSideIconList(){
        return this.$store.getters.sideIconList;
    },
},
methods: {
    getLatestPost(){
        axios.get('/latestPost').then((response)=>{
            this.latestposts = response.data.latestpost;
        })
    }
},
}
</script>
<style>
.socialIcon{
    color: #6c757d!important;
    width: 40px;
    height: 40px;
    background: #cccccc40;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
}
</style>
