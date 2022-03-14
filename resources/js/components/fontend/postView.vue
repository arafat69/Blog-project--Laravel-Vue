<template>
  <div>
<section class="page-title bg-1">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block text-center">
          <span class="text-white">News details</span>
          <h1 class="text-capitalize mb-4 text-lg">Blog Single</h1>
          <ul class="list-inline">
            <li class="list-inline-item"><router-link to="/" class="text-white">Home</router-link></li>
            <li class="list-inline-item"><span class="text-white">/</span></li>
            <li class="list-inline-item"><a  class="text-white-50">News details</a></li>
          </ul>
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
                            <div class="col-lg-12 mb-5">
                                <div class="single-blog-item">
                                    <div class="blog-item-content bg-white p-5">
                                        <img :src="'uploads/'+postList.file" width="100%" class="rounded">
                                        <div class="blog-item-meta bg-gray py-3 px-2">
                                            <span class="text-muted text-capitalize mr-3">
                                                <i class="ti-pencil-alt mr-2"></i>{{postList.categories.name}}</span>
                                            <span class="text-muted text-capitalize mr-3"><i
                                                    class="ti-comment mr-2"></i>{{allComment.length}} Comments</span>
                                            <span class="text-black text-capitalize mr-3"><i class="ti-time mr-1"></i>
                                                {{ postList.created_at }}</span>
                                        </div>

                                        <h2 class="mt-3 mb-4"><a>{{postList.title}}</a></h2>
                                        <span v-html="postList.description">
                                            {{postList.description}}
                                        </span>

                                        <div class="tag-option mt-5 clearfix">
                                            <ul class="float-left list-inline">
                                                <li>Tags:</li>
                                                <li class="list-inline-item"><a href="#" rel="tag">Advancher</a></li>
                                                <li class="list-inline-item"><a href="#" rel="tag">Landscape</a></li>
                                                <li class="list-inline-item"><a href="#" rel="tag">Travel</a></li>
                                            </ul>

                                            <ul class="float-right list-inline">
                                                <li class="list-inline-item"> Share: </li>
                                                <li class="list-inline-item"><a href="https://www.facebook.com/sharer/sharer.php?u=http://freelancerworld.ga/course-view/1&display=popup"
                                                target="_blank"><i class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
                                                <li class="list-inline-item"><a href="#" ><i
                                                            class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                                <li class="list-inline-item"><a href="#" ><i
                                                            class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                                                <li class="list-inline-item"><a href="#"><i
                                                            class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-12 mb-5">
                                <div class="comment-area card border-0 p-5">
                                    <h4 class="mb-4">Total {{allComment.length}} Comments</h4>
                                    <ul class="comment-tree list-unstyled">
                                        <li v-for="comment in allComment" :key="comment.id" class="mb-1 p-2 bg-gray rounded">
                                            <div class="comment-area-box">
                                                <img width="50" height="50" :src="'fontend/images/about/ar.jpg'" class="rounded-circle float-left mr-3 mt-2">

                                                <h5 class="mb-1">{{comment.name}}</h5>
                                                <span>Bangladesh</span>

                                                <div
                                                    class="comment-meta mt-4 mt-lg-0 mt-md-0 float-lg-right float-md-right">
                                                    <a href="javascript:void(0)"><i class="icofont-reply mr-2 text-muted"></i>Reply |</a>
                                                    <span class="date-comm">Posted {{comment.date}} </span>
                                                </div>

                                                <div class="comment-content mt-3">
                                                    <p>{{comment.comment}} </p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <form class="contact-form bg-white rounded p-5" id="comment-form" @submit.prevent="publicComment(postList.id)" >
                                    <h4 class="mb-4">Write a comment</h4>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input class="form-control" type="text" v-model="form.name" name="name" id="name"
                                                    placeholder="Name:">
                                                <div class="text-danger" v-if="form.errors.has('name')" v-html="form.errors.get('name')" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input class="form-control" type="text" v-model="form.mail" name="mail" id="mail"
                                                    placeholder="Email:">
                                                 <div class="text-danger" v-if="form.errors.has('mail')" v-html="form.errors.get('mail')" />
                                            </div>
                                        </div>
                                    </div>


                                    <textarea class="form-control mb-3" v-model="form.comment" name="comment" id="comment" cols="30" rows="5"
                                        placeholder="Comment"></textarea>
                                    <div class="text-danger" v-if="form.errors.has('comment')" v-html="form.errors.get('comment')" />

                                    <input class="btn btn-main btn-round-full" type="submit" name="submit-contact"
                                        id="submit_contact" value="Submit Message">
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="sidebar-wrap">
                            <div class="sidebar-widget search card p-4 mb-3 border-0">
                                <input type="text" class="form-control" placeholder="search">
                                <a class="btn text-light btn-mian btn-small d-block mt-2">search</a>
                            </div>
                             <fontend-sidebar></fontend-sidebar>
                        </div>
                    </div>
                </div>
            </div>
        </section>

  </div>
</template>

<script>
export default {
    name:'postView',
    data:() =>({
            postList:{},
            allComment:{},
            postId:'',
            form: new Form({
                name: '',
                mail: '',
                comment: '',
            }),
            currentUrl: window.location.pathname
    }),
    mounted() {
        this.getPost();
    },
    watch:{
        $route:'updateId',
        postId : 'getAllComment',
    },
    methods: {
        getPost(){
           axios.get('/postlistById/'+this.$route.params.slug).then((response)=>{
            this.postList = response.data.getpostById[0];
            this.postId = response.data.getpostById[0].id;
        })
        },
        publicComment(id){
            this.form.post('/publicPostComment/'+id).then((response)=>{
                this.getAllComment();
                this.form.name='',
                this.form.mail='',
                this.form.comment='',
                Toast.fire({
                icon: 'success',
                title: 'Comment successfully'
            })
            })
        },
        getAllComment(){
            axios.get('/getCommentByPostId/'+this.postId).then((response)=>{
                this.allComment = response.data.comments;
            })
        },
        updateId(){
            this.getPost()
        }
    },


}
</script>

<style>

</style>
