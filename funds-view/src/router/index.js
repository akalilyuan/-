import { createRouter, createWebHistory } from 'vue-router'
import MainVue from '@/views/Main.vue'
const routes = [
  {
    path: '/',
    redirect: "/index"
  },
  {
    path: '/index',
    component: MainVue,
    children: [
      {
        path: "",
        component: () => import("../views/home/Home.vue")
      },
      {
        path: "/home",
        name: "home",
        component: () => import("../views/home/Home.vue")
      },
      {
        path: "/infoshow",
        name: "infoshow",
        component: () => import("../views/home/InfoShow.vue")
      },
      {
        path: "/fundlist",
        name: "fundlist",
        component: () => import("../views/fundlist/FundList.vue")
      },
      {
        path: "/fundlist1",
        name: "fundlist1",
        component: () => import("../views/fundlist1/FundList.vue")
      },
      {
        path: "/fundlist2",
        name: "fundlist2",
        component: () => import("../views/fundlist2/FundList.vue")
      },
      {
        path: "/fundlist3",
        name: "fundlist3",
        component: () => import("../views/fundlist3/FundList.vue")
      },
      {
        path: "/fundlist4",
        name: "fundlist4",
        component: () => import("../views/fundlist4/FundList.vue")
      },
      {
        path: "/fundlist5",
        name: "fundlist5",
        component: () => import("../views/fundlist5/FundList.vue")
      },
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: () => import("../views/login/Login.vue")
  },
  {
    path: '/register',
    name: 'register',
    component: () => import("../views/register/Register.vue")
  },
  {
    path: '/:pathMatch(.*)',
    name: 'notfound',
    component: () => import("../views/NotFound.vue")
  }

]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

// 路由守卫
router.beforeEach((to, from, next) => {
  const isLogin = localStorage.mytoken ? true : false

  if (to.path == "/login" || to.path == '/register') {
    next()
  } else {
    isLogin ? next() : next("/login")
  }
})

export default router
