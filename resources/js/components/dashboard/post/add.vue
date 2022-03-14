<template>
  <div>
      <div class="row">
          <div class="col-md-10 m-auto">

              <form @submit.prevent="savePost" enctype="multipart/form-data">
              <div class="card">
                  <div class="card-title bg-primary py-2 px-4">
                      <span class="text-white">Add New Post</span>
                  </div>
                  <div class="card-body">
                      <div class="row">
                      <div class="col-md-7 border-right">

                        <label for="category" class="text-bold">Select Category</label>
                        <select name="category_id" v-model="form.category_id" class="form-select">
                            <option :value="category.id" v-for="category in getCategoryList" :key="category.id">
                                {{ category.name }}
                            </option>
                        </select>
                        <div class="text-danger" v-if="form.errors.has('category_id')" v-html="form.errors.get('category_id')" />

                      <label for="" class="text-bold">Title</label>
                      <input type="text" class="form-control" placeholder="Enter Title" v-model="form.title" name="title">
                      <div class="text-danger" v-if="form.errors.has('title')" v-html="form.errors.get('title')" />

                        <label for="" class="text-bold">Description</label>
                      <ckeditor :editor="editor" v-model="form.description" name="description" :config="editorConfig"></ckeditor>
                      <div class="text-danger" v-if="form.errors.has('description')" v-html="form.errors.get('description')" />

                      </div>
                      <div class="col-md-5">
                        <label for="" class="text-bold">Featured image</label>
                       <input type="file" @change="getFile" class="form-control" name="file">
                      <div class="text-danger" v-if="form.errors.has('file')" v-html="form.errors.get('file')" />
                        <div class="preview-image">
                            <img :src="previewImage" width="100%" height="200">
                        </div>
                        <label for="" class="text-bold">Slug</label>
                       <input type="text" class="form-control" placeholder="Post Slug" v-model="form.slug" name="slug">
                      <div class="text-danger" v-if="form.errors.has('slug')" v-html="form.errors.get('slug')" />
                      </div>
                  </div>
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
 import ClassicEditor from '@ckeditor/ckeditor5-build-classic';
export default {
    name:'save',
data: () => ({
    previewImage: 'backend/assets/images/previewImage.jpg',
    form: new Form({
        category_id: '',
        title: '',
        description: '',
        file: '',
        slug: '',
    }),
    editor: ClassicEditor,
    editorData: '',
    editorConfig: {
      //
    }
}),
methods: {
    getFile(e){
        this.form.file = e.target.files[0]
        //live preview
        const file = e.target.files[0];
        this.previewImage = URL.createObjectURL(file)
    },
    savePost(){
        // Submit the form via a POST request
        this.form.post('/postSave').then((response)=>{
            this.$router.push('/post');
            Toast.fire({
                icon: 'success',
                title: 'Post Added successfully'
            })
        });
    },
    goback(){
       this.$router.push('/post');
    },
},
mounted() {
    this.$store.dispatch('getCategoryList')
},
computed: {
    getCategoryList(){
        return this.$store.getters.categoryList;
    }
},
}

</script>
<style>
    .text-bold{
        font-weight: 600;
        padding-top: 4px;
    }
    .border-right{
    border-right: 1px solid #b1b6bb!important;
    }
    .ck-editor__editable{
        min-height: 150px;
    }
</style>
