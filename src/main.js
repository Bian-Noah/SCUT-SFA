import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'

//导入elementplus内置动画
import { ElCollapseTransition } from 'element-plus'
// fade/zoom
import 'element-plus/theme-chalk/base.css'
createApp(App).component(ElCollapseTransition.name, ElCollapseTransition).use(router).mount('#app')
