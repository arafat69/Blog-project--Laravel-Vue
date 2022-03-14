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
                  <div v-if="!postData.length">
                    <div class="alert alert-danger" role="alert">
                    No Post Found
                    </div>
                </div>
                <div v-else>
                    <div class="alert alert-primary" role="alert">
                    Total {{postData.length}} Post This Page
                    </div>
                </div>
              <div class="row">

                <div v-for="postLists in filterSearch" :key="postLists.id" class="col-lg-6 col-md-6 mb-5">
                  <div class="blog-item">
                    <img :src="'uploads/'+postLists.file" alt="" class="img-fluid rounded"/>
                    <div class="blog-item-content bg-white p-4">

                      <h4 class="mt-3 mb-3">
                        <router-link :to="`/view/${postLists.slug}`">{{postLists.title | titleSlice}}</router-link>
                      </h4>
                      <p class="mb-4">
                            {{ postLists.description|snippet }}..
                      </p>

                      <router-link :to="`/view/${postLists.slug}`" class="btn btn-small btn-main btn-round-full" >Learn More</router-link>
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
name: 'categoryWishPost',

data:()=>({
searchbar: '',
postData: [],
allData:{},

}),

mounted() {
    // this.$store.dispatch('getPostList')
    this.getPosts();
},
computed: {
    // getPostList(){
    //     return this.$store.getters.postLists;
    // },
    filterSearch(){
       return this.postData.filter(post=>{
           return post.title.match(this.searchbar);
        })
    },

},
watch:{
$route: 'updateCategory',
},
methods: {
    // Our method to GET results from a Laravel endpoint
		getPosts(page = 1) {
			axios.get(`/categoryWishPostView/${this.$route.params.categoryName}?page=` + page)
				.then(response => {
					this.postData = response.data.data;
					this.allData = response.data;
				});
		},
        updateCategory(){
            this.getPosts()
        }
},

}
</script>

