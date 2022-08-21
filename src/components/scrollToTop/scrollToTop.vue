<template>
     <a @click="scrollTop" v-show="visible" class="bottom-right">
         <i class="fa-solid fa-angles-up"></i>
     </a>
</template>

<script setup>
// imports
    import { ref, onMounted } from 'vue';
     const visible = ref(false)
      const scrollTop = () => {
      const intervalId = setInterval(() => {
        if (window.pageYOffset === 0) {
          clearInterval(intervalId)
        }
        window.scroll(0, window.pageYOffset - 50)
        }, 20)
        }
        const scrollListener = (e) => {
        visible.value = window.scrollY > 150
        }
        onMounted(() =>{
            window.addEventListener('scroll', scrollListener)
        })

</script>

<style scoped>
    .bottom-right {
    position: fixed;
    bottom: 20px;
    right: 20px;
    cursor: pointer;
    color: #fff;
    }
    .fa-angles-up{
        background: #E6642B;
        padding: .7rem;
    }
</style>