<template>
  <div>
      <div class="row">
          <div class="col-md-10 m-auto">

              <form @submit.prevent="updatesidebar" enctype="multipart/form-data">
              <div class="card">
                  <div class="card-title bg-primary py-2 px-4">
                      <span class="text-white">Sidebar</span>
                  </div>
                  <div class="card-body">
                      <div class="row">
                      <div class="col-md-7 border-right">

                        <label for="" class="text-bold">Full Name</label>
                        <input type="text" class="form-control form-control-sm" v-model="form.name" name="name">

                      <label for="" class="text-bold">Title/Skill</label>
                      <input type="text" class="form-control form-control-sm" v-model="form.skill" name="skill">

                        <label for="" class="text-bold">Description</label>
                      <ckeditor :editor="editor" v-model="form.description" name="description" :config="editorConfig"></ckeditor>

                      </div>
                      <div class="col-md-5">
                        <label for="" class="text-bold">Sidebar Photo</label>
                        <div class="preview-image">
                            <img :src="fileChange ? previewImage : 'uploads/'+form.photo" width="100%" height="200">
                        </div>
                         <input type="file" @change="getFile" class="form-control mt-2" name="file">
                      </div>
                  </div>
                  </div>
                  <div class="card-footer bg-grey py-3 text-center">
                      <button class="btn btn-primary" type="submit" :disabled="form.busy">Update</button>
                  </div>
              </div>
              </form>
          </div>
      </div>


    <div class="row">
          <div class="col-md-10 m-auto">
              <div class="card">
                  <div class="card-title bg-primary py-2 px-4">
                      <span class="text-white">Social Link</span>
                      <button class="btn btn-secondary float-end" data-bs-toggle="modal" data-bs-target="#modelId"> Add New</button>
                  </div>
                  <div class="card-body">
                       <table class="table table-bordered">
                           <thead>
                           <tr>
                               <th>#</th>
                               <th>Social Icon</th>
                               <th>action</th>
                           </tr>
                           </thead>
                           <tbody>
                           <tr v-for="(iconlist,idex) in getSideIconList" :key="iconlist.id">
                               <td>{{idex+1 }}</td>
                               <td> <a :href="iconlist.link"><i :class="iconlist.icon"></i></a></td>
                               <td>
                                   <button class="btn btn-info btn-sm" @click="getUpdateData(iconlist)" data-bs-toggle="modal" data-bs-target="#EditSocialIcon"><i class="fas fa-edit"></i></button>
                                   <button class="btn btn-danger btn-sm" @click.prevent="socialIconDelete(iconlist.id)"><i class="fas fa-trash-alt"></i></button>
                               </td>
                           </tr>
                           </tbody>
                       </table>
                  </div>
              </div>
          </div>
      </div>

<!-- add social item -->
      <div class="modal fade" id="modelId">
          <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                  <div class="modal-header bg-secondary">
                      <h5 class="modal-title text-white">New Social Item</h5>
                        <button type="button" class="close text-white" data-bs-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                  </div>
                  <form @submit.prevent="saveSideIcon">
                  <div class="modal-body">
                     <div class="form-group">
                         <label for="">Font-Awesome Class Name</label>
                         <input type="text" v-model="social.icon" name="icon" placeholder="Example:- fab fa-facebook" class="form-control" required>
                     </div>
                     <div class="form-group">
                         <label for="">Icon Link</label>
                         <input type="text" v-model="social.link" name="link" placeholder="Social Icon Link" class="form-control">
                     </div>
                  </div>
                  <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                      <button type="submit" class="btn btn-primary">Save</button>
                  </div>
                  </form>
              </div>
          </div>
      </div>

      <!-- add social item -->
      <div class="modal fade" id="EditSocialIcon">
          <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                  <div class="modal-header bg-secondary">
                      <h5 class="modal-title text-white">Edit Social Icon</h5>
                        <button type="button" class="close text-white" data-bs-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                  </div>
                  <form>
                  <div class="modal-body">
                     <div class="form-group">
                         <label for="">Font-Awesome Class Name</label>
                         <input type="text" v-model="social.icon" name="icon" placeholder="Example:- fab fa-facebook" class="form-control" required>
                     </div>
                     <div class="form-group">
                         <label for="">Icon Link</label>
                         <input type="text" v-model="social.link" name="link" placeholder="Social Icon Link" class="form-control">
                     </div>
                  </div>
                  <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                      <button type="submit" class="btn btn-primary" @click="updateSocialIcon()" data-bs-dismiss="modal">Update</button>
                  </div>
                  </form>
              </div>
          </div>
      </div>

  </div>
</template>

<script>
 import ClassicEditor from '@ckeditor/ckeditor5-build-classic';
export default {
    name:'save',
data: () => ({
    fileChange: false,
    previewImage: '',
    form: new Form({
        name:'',
        skill: '',
        description: '',
        photo: '',
        newFile: '',
    }),
    social: new Form({
        icon: '',
        link: '',
        id:'',
    }),
    editor: ClassicEditor,
    editorData: '',
    editorConfig: {
      //
    }
}),
methods: {
    getFile(e){
        this.fileChange = true
        this.form.newFile = e.target.files[0]
        //live preview
        const newFile = e.target.files[0];
        this.previewImage = URL.createObjectURL(newFile)
    },
    updatesidebar(){
        // Submit the form via a POST request
        this.form.post('/sidebarUpdate').then((response)=>{
            axios.get('/sidebarcontent').then((response) => {
            this.form.fill(response.data.sidebardContent)
            });
            Toast.fire({
                icon: 'success',
                title: 'Post Added successfully'
            })
        });
    },
    saveSideIcon(){
        // Submit the form via a POST request
        this.social.post('/sidebarIcon').then((response)=>{
            this.social.icon= '';
            this.social.link= '';
            this.$store.dispatch('getSideIconList');
            Toast.fire({
                icon: 'success',
                title: 'Social Icon Added successfully'
            })
        });
    },
    getUpdateData(data){
        this.social.link = data.link;
        this.social.icon = data.icon;
        this.social.id = data.id;
    },
    updateSocialIcon(){
        this.social.post('/updateSocialIcon/'+this.social.id).then((response)=>{
            this.$store.dispatch('getSideIconList');
            this.social.link = '';
            this.social.icon = '';
            this.social.id = '';
            Toast.fire({
                icon: 'success',
                title: 'Social Icon Update successfully'
            })
        });
    },
    socialIconDelete(id){
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
                axios.get('/socialIconDelete/'+id).then((response)=>{
                    this.$store.dispatch('getSideIconList');
                    Swal.fire(
                    'Deleted!',
                    'Sccial Icon has been deleted.',
                    'success'
                    )
                })
            }
        });
    }
},
mounted() {
    this.$store.dispatch('getSideIconList');
    axios.get('/sidebarcontent').then((response) => {
        this.form.fill(response.data.sidebardContent)
    });
},
computed:{
getSideIconList(){
        return this.$store.getters.sideIconList;
    },
}

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
        min-height: 95px;
    }
</style>
