<template>
  <div>
      <div class="row justify-content-center">
          <div class="col-md-10">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title float-start">All Post List</h3>
                <router-link to="/addPost" class="btn btn-primary float-end"> Add New</router-link>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                  <div class="serach mb-1">
                      <input type="text" v-model="searchbar" class="form-control" placeholder="Search By Title">
                  </div>
                <table class="table table-bordered" id="myTable">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Title</th>
                      <th>Category</th>
                      <th style="width: 20px">f_image</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(postList,index) in filterSearch" :key="postList.id">
                      <td>{{ index+1 }}</td>
                      <td>{{ postList.title }}</td>
                      <td>{{ postList.categories.name }}</td>
                      <td><img :src="'uploads/'+postList.file" width="46"></td>
                      <td>
                        <router-link :to="`/editPost/${postList.id}`" class="btn btn-sm btn-info"><i class="bi bi-pencil-square"></i></router-link>
                        <a @click.prevent="postDelete(postList.id)" class="btn btn-sm btn-danger"><i class="bi bi-trash"></i></a>
                      </td>
                    </tr>

                  </tbody>
                </table>
                <pagination :data="allData" @pagination-change-page="getPosts"></pagination>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
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
    }
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
    postDelete(id){
        Swal.fire({
        title: 'Are you sure?',
        text: "Delete this post!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                axios.get('/postDelete/'+id).then((response)=>{
                    this.getPosts();
                    Swal.fire(
                    'Deleted!',
                    'Post has been deleted.',
                    'success'
                    )
                })
            }
        });
    }
},

}
</script>

