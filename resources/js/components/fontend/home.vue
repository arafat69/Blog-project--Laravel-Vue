<template>
  <div>

      <section class="page-title bg-1">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="block text-center">
                <span class="text-white">Our blog</span>
                <h1 class="text-capitalize mb-4 text-lg">Blog articles</h1>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="section blog-wrap bg-gray">
        <div class="container">
          <div class="row">
            <div class="col-lg-8">
              <div class="row">

                <div v-for="postList in filterSearch" :key="postList.id" class="col-lg-6 col-md-6 mb-5">
                  <div class="blog-item">
                    <img :src="'uploads/'+postList.file" alt="" class="img-fluid rounded"/>
                    <div class="blog-item-content bg-white p-4">
                      <div class="blog-item-meta py-1 px-2">
                        <span class="text-muted text-capitalize mr-3" >
                            <i class="ti-pencil-alt mr-2"></i>{{postList.categories.name}}</span>
                      </div>

                      <h4 class="mt-3 mb-3">
                        <router-link :to="`/view/${postList.slug}`">{{postList.title | titleSlice}}</router-link>
                      </h4>
                      <p class="mb-4">
                            {{ postList.description|snippet }}..
                      </p>

                      <router-link :to="`/view/${postList.slug}`" class="btn btn-small btn-main btn-round-full" >Learn More</router-link>
                    </div>
                  </div>
                </div>

              </div>
            </div>
            <div class="col-lg-4">
            <div class="sidebar-widget search card p-4 mb-3 border-0">
                <input type="text" class="form-control" placeholder="search" v-model="searchbar"/>
                 <a class="btn text-light btn-mian btn-small d-block mt-2">search</a>
            </div>
              <fontend-sidebar></fontend-sidebar>
            </div>
          </div>

          <div class="row mt-5">
            <div class="col-lg-8">
              <nav class="navigation pagination py-2 d-inline-block">
                <pagination :data="allData" @pagination-change-page="getPosts"></pagination>
              </nav>
            </div>
          </div>
        </div>
      </section>

    </div>
</template>

<script>
export default {
name: 'list',

data:()=>({
searchbar: '',
postData: [],
allData:{}

}),

mounted() {
    // this.$store.dispatch('getPostList')
    this.getPosts();
},
computed: {
    // getPostList(){
    //     return this.$store.getters.postList;
    // },
    filterSearch(){
       return this.postData.filter(post=>{
           return post.title.match(this.searchbar);
        })
    },

},
methods: {
    // Our method to GET results from a Laravel endpoint
		getPosts(page = 1) {
			axios.get('postList?page=' + page)
				.then(response => {
					this.postData = response.data.data;
					this.allData = response.data;
				});
		},
},

}
</script>



<style>
</style>
