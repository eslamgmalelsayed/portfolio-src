<template>
    <nav class="navbar" role="navigation" aria-label="main navigation">
       <div class="container is-max-desktop px-2">
        <div class="navbar-brand">
             <a
              @click.prevent
              class="navbar-item is-size-1 portfolio-logo is-hidden-desktop"
              active-class="is-active"
            >
                PORTFOLIO
            </a>
            <a
              @click.prevent=" showMobileNav = !showMobileNav "
              class="navbar-burger mt-4"
              :class=" {'is-active' : showMobileNav} "
               ref = 'navbarBurgerRef' 
              aria-expanded="false"
              aria-label="menu"
              data-target="navbarBasicExample"
              role="button"
            >
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            </a>
        </div>

        <div
          id="navbarBasicExample"
          class="navbar-menu"
          :class=" { 'is-active' : showMobileNav } "
          ref="navbarMenuRef"
        >
            <div class="navbar-end">
            <RouterLink
              :to="{name : 'home'}"
              class="navbar-item is-size-3"
              active-class="is-active"
            >
                Work
            </RouterLink>
            <a 
              @click.prevent
              class="navbar-item is-size-1 portfolio-logo is-hidden-touch px-5"
            >
                PORTFOLIO
            </a>
            <RouterLink
              :to="{name : 'about'}"
              class="navbar-item is-size-3"
              active-class="is-active"
            >
                About
            </RouterLink>
            </div>
            <div class="navbar-end pt-5 mt-1 px-2 is-size-5">
                <a class="mr-3 pt-2" target="_blank" href="https://wa.me/966570359187">
                <i class="fa-brands fa-whatsapp"></i>
                </a>
                <a class="mr-3 pt-2" target="_blank" href="https://www.linkedin.com/in/eslam-gamal-el-sayed-a4668014b/">
                <i class="fa-brands fa-linkedin-in"></i>
                </a>
                <a class="mr-3 pt-2" target="_blank" href="https://github.com/eslamgmalelsayed">
                <i class="fa-brands fa-github"></i>
                </a>
                <button class="button toggller is-small mt-2" @click="toggleDark()">
                    <i
                    :class="isDark ? 'fa-solid fa-moon' : 'fa-solid fa-sun'"
                    />
                </button>
            </div>
        </div>
       </div>
    </nav>
</template>
<script setup>
// imports
    import { ref } from "vue";
    import { onClickOutside } from '@vueuse/core'
    import { useDark, useToggle } from '@vueuse/core'
    // refs
    const showMobileNav = ref(false)
    //  toggle dark mode
    const isDark = useDark()
    const toggleDark = useToggle(isDark)

    // close nav menu outside
    const navbarMenuRef = ref(null)
    const navbarBurgerRef = ref(null)
     onClickOutside(navbarMenuRef, () => {
        showMobileNav.value = false},
        {
            ignore : [navbarBurgerRef]
        }
     )
</script>

<style scoped>
.dark a{
    color: var(--darkColorFont) !important;
}
nav{
    background: #fff;
}
    a{
        color: #000 !important;
    }
    a:focus{
        background: none !important;
    }
    .is-active,.dark .is-active{
        color: var(--secondaryColor) !important;
        text-decoration-line: line-through;
    }
    a:hover{
       background: none !important;
    }
    .portfolio-logo{
        font-family: 'Rubik Moonrocks', cursive;
    }
    @media (max-width: 1023px) {
        /* dark mode */
        .dark .navbar{
            background: var(--darkColorItems) !important;

        }
        .dark .navbar-menu{
            background: var(--darkColorItems) !important;    
        }
        .dark a.navbar-item.is-active{
            background: var(--darkColorItems) !important;
        }
        /* light mode */
        .navbar{
            background: #fff !important;
        }
    .navbar-menu{
        position: absolute;
        width: 100%;
        left: 0;
        background: #fff !important;        
    }
    a.navbar-item.is-active{
        background: var(--darkColorFont) !important;
    }
    .toggller{
        margin-top: 0 !important;
    }
   
 }
 /* social */
 .fa-linkedin-in:hover{
    transition: .3s;
    color: #0A66C2;
 }
 .fa-whatsapp:hover{
    transition: .3s;
    color: #25D366;
 }
 .fa-github:hover{
    transition: .3s;
    color:#D3D3D3;
 }
 .fa-sun{
    color: #fbac13;
 }
 .fa-moon{
    color: #064663;
 }
</style>