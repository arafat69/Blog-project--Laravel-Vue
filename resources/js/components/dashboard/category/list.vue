<template>
  <div>
      <div class="row justify-content-center">
          <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title float-start">Category List</h3>
                <router-link to="/addCategory" class="btn btn-primary float-end"> Add Category</router-link>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered" id="myTable">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Category Name</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(categoryList,index) in getCategoryList" :key="categoryList.id">
                      <td>{{ index+1 }}</td>
                      <td>{{ categoryList.name }}</td>
                      <td>
                        <router-link :to="`/editCategory/${categoryList.id}`" class="btn btn-sm btn-info"><i class="bi bi-pencil-square"></i></router-link>
                        <a @click.prevent="categoryDelete(categoryList.id)" class="btn btn-sm btn-danger"><i class="bi bi-trash"></i></a>
                      </td>
                    </tr>

                  </tbody>
                </table>
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
mounted() {
    this.$store.dispatch('getCategoryList')
},
computed: {
    getCategoryList(){
        return this.$store.getters.categoryList;
    }
},
methods: {
    categoryDelete(id){
        Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                axios.get('/categoryDelete/'+id).then((response)=>{
                    this.$store.dispatch('getCategoryList')
                    Swal.fire(
                    'Deleted!',
                    'Category has been deleted.',
                    'success'
                    )
                })
            }
        });
    }
},

}
</script>

