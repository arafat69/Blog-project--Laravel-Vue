/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue').default;

//vue Router import
import VueRouter from 'vue-router';

Vue.use(VueRouter)

import {routes} from './routers';
const router = new VueRouter({
    routes, // short for `routes: routes`
    linkActiveClass: 'active'
});
//jquery support
import JQuery from 'jquery'
window.$ = window.jQuery = JQuery
// v form support
import Form from 'vform'
window.Form = Form;

// vuex support
import Vuex from 'vuex'
Vue.use(Vuex)

import stores from './store'
const store = new Vuex.Store(
    stores
  );

  //sweetAlert2 support
  import Swal from 'sweetalert2'
  window.Swal = Swal;
  const Toast = Swal.mixin({
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 3000,
    timerProgressBar: true,
    didOpen: (toast) => {
      toast.addEventListener('mouseenter', Swal.stopTimer)
      toast.addEventListener('mouseleave', Swal.resumeTimer)
    }
  });
  window.Toast = Toast;

  //CKEditor support
  import CKEditor from '@ckeditor/ckeditor5-vue2';
  Vue.use( CKEditor );

  //laravel-vue pagination support
  Vue.component('pagination', require('laravel-vue-pagination'));

Vue.component('admin-master', require('./components/AdminMaster.vue').default);
Vue.component('fontend-master', require('./components/FontendMaster.vue').default);
Vue.component('fontend-sidebar', require('./components/fontend/sidebar.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */
//globally filter create
Vue.filter('snippet',val=>{
    // if(!val || typeof(val) != 'string') return ''
    val = val.slice(11,90)
    return val
});
Vue.filter('titleSlice',title=>{
    title= title.slice(0,50)
    return title
})

const app = new Vue({
    el: "#app",
    router,
    store
});
