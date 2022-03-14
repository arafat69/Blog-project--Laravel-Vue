import dashboard from './components/dashboard/home.vue';

//import from category
import category from './components/dashboard/category/list.vue';
import addCategory from './components/dashboard/category/add.vue';
import editCategory from './components/dashboard/category/edit.vue';

//import from post
import post from './components/dashboard/post/list.vue';
import addPost from './components/dashboard/post/add.vue';
import editPost from './components/dashboard/post/edit.vue';

//import from fontend
import home from './components/fontend/home.vue';
import view from './components/fontend/postView.vue';
import categoryWishPostView from './components/fontend/categoryWishpostView.vue';
import about from './components/fontend/about.vue';
import contact from './components/fontend/contact.vue';
import services from './components/fontend/services.vue';
import portfolio from './components/fontend/portfolio.vue';

//import from template
import sidebar from './components/dashboard/template/sidebar.vue';


export const routes = [
    //path for fontend
    { path: '/', component: home },
    { path: '/view/:slug', component: view },
    { path: '/categories/:categoryName', component: categoryWishPostView },
    { path: '/about', component: about },
    { path: '/contact', component: contact },
    { path: '/services', component: services },
    { path: '/portfolio', component: portfolio },

    { path: '/dashboard', component: dashboard },
    //path for category
    { path: '/category', component: category },
    { path: '/addCategory', component: addCategory },
    { path: '/editCategory/:categoryId', component: editCategory },
    //path for post
    { path: '/post', component: post },
    { path: '/addPost', component: addPost },
    { path: '/editPost/:postId', component: editPost },
    //path for template
    {path: '/sidebar', component: sidebar},

  ]
