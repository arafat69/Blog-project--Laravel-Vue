<template>
  <div>
      <div class="row">
          <div class="col-md-8 m-auto">
              <form @submit.prevent="categoryUpdate">
              <div class="card">
                  <div class="card-title bg-primary py-2 px-4">
                      <span class="text-white">Edit Category</span>
                  </div>
                  <div class="card-body">
                      <label for="category">Category Name</label>
                      <input type="text" class="form-control" placeholder="Enter Name" v-model="form.name" name="name">
                      <div class="text-danger" v-if="form.errors.has('name')" v-html="form.errors.get('name')" />
                  </div>
                  <div class="card-footer bg-grey py-3 text-center">
                      <button class="btn btn-primary" type="submit" :disabled="form.busy">Submit</button>
                      <button @click="goback()" class="btn btn-danger"><i class="bi bi-arrow-left"></i> Back</button>
                  </div>
              </div>
              </form>
          </div>
      </div>
  </div>
</template>

<script>
export default {
    name:'edit',
data: () => ({
    form: new Form({
        name:'',
    })
}),
mounted() {
    axios.get('/categoryById/'+this.$route.params.categoryId).then((response)=>{
        this.form.fill(response.data.categoryById);
    })
},
methods: {
    categoryUpdate(){
        // Submit the form via a POST request
        this.form.post(`/categoryUpdate/${this.$route.params.categoryId}`).then((response)=>{
            this.$router.push('/category');
            Toast.fire({
                icon: 'success',
                title: 'Category Update successfully'
            })
        });
    },
    goback(){
       this.$router.push('/category');
    },
}
}

</script>
