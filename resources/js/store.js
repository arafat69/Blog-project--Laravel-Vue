import axios from "axios"

export default{

    state:{
        category:[],
        post: [],
        sideIcon:[],
    },

    getters:{
        categoryList(state){
            return state.category;
        },
        postList(state){
            return state.post;
        },
        sideIconList(state){
            return state.sideIcon;
        }
    },

    actions: {
        getCategoryList(context){
            axios.get('/categoryList').then((response)=>{
                context.commit('categoryList',response.data.categoryList);
            })
        },
        getPostList(context){
            axios.get('/postList').then((response)=>{
                context.commit('postList',response.data.postList);
            })
        },
        getSideIconList(context){
            axios.get('/sideIconList').then((response)=>{
                context.commit('sideIconList',response.data.sideIconList);
            })
        },
    },

    mutations:{
        categoryList(state,responseData){
            return state.category = responseData;
        },
        postList(state,responseData){
            return state.post = responseData;
        },
        sideIconList(state,responseData){
            return state.sideIcon = responseData;
        }
    },
}
