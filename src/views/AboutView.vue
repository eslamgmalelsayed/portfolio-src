<template>
  <section class="section about">
    <!-- scroller -->
    <ScrollToTop class="animate__animated animate__fadeInUp" />
    <div class="columns has-text-centered">
      <!-- about -->
      <div class="column">
        <figure class="image is-square">
        <img src="../assets/images/profile.webp">
      </figure>
      </div>
      <div class="column has-text-lightt">
        <h3 class="is-size-1">Eslam Gamal</h3>
        <h5 class="is-size-2">Fronend Developer.</h5>
        <p class="is-size-3">Self-motivated web developer with high level of
        experience working on multiple projects. Passionate
        and hardworking with penchant for meeting deadlines.
        Promotes best practices in web design and offering
        diverse customer project portfolio.</p>
        <a target="_blank" href="https://drive.google.com/file/d/1jUt5rCM_ohkADiFwhjn5gYEa2P45_nSw/view?usp=sharing" class="button is-size-5 mt-5 cv-button">Download CV</a>
      </div>
    </div>
    <!-- skills -->
    <div class="columns py-5 has-text-centered">
        <div class="column is-12">
            <span class="tag is-large has-text-weight-bold is-size-4">
            Skills
          </span>
        </div>
    </div>
    <div class="columns is-mobile is-justify-content-center-mobile py-5 has-text-centered is-multiline">

      <div 
      v-for="({logo,title,color},i) in skills"
      :key='i'
      class="column is-4">
        <span class="tag single-tag is-large has-text-weight-bold"><i :style="{color:color}" :class="logo" class="is-size-3"></i></span>
        <p class="p-tags">{{title}}</p>
      </div>
    </div>
  </section>
</template>

<script setup>
  // imports
import ScrollToTop from '../components/scrollToTop/scrollToTop.vue'
// skills
const skills = [
  {
    logo: 'fa-brands fa-html5',
    title: 'Html',
    color: '#0080BE'
  },
  {
    logo: 'fa-brands fa-css3',
    title: 'Css3',
    color: '#254BDD'
  },
  {
    logo: 'fa-brands fa-sass',
    title: 'Sass',
    color: '#CD6799'
  },
  {
    logo: 'fa-brands fa-bootstrap',
    title: 'Bootstrap',
    color: '#41b883'
  },
  {
    logo: 'fa-brands fa-css3',
    title: 'Tailwind',
    color: '#4EB1AE'
  },
  {
    logo: 'fa-brands fa-css3',
    title: 'Bulma css',
    color: '#00D1B2'
  },
  {
    logo: 'fa-brands fa-css3',
    title: 'Material ui',
    color: '#007FFF'
  },
  {
    logo: 'fa-brands fa-css3',
    title: 'Vuetify',
    color: '#1867C0'
  },
  {
    logo: 'fa-brands fa-github',
    title: 'Github',
    color: '#f5f5f5'
  },
  {
    logo: 'fa-brands fa-js',
    title: 'Javascript',
    color: '#f7df1e'
  },
  {
    logo: 'fa-brands fa-js',
    title: 'Regex',
    color: '#1596D0'
  },
  {
    logo: 'fa-brands fa-js',
    title: 'Vue js',
    color: '#42b883'
  },
  {
    logo: 'fa-brands fa-js',
    title: 'Pinia store',
    color: '#FFE165'
  },
  {
    logo: 'fa-brands fa-js',
    title: 'Vuex',
    color: '#41b883'
  },
  {
    logo: 'fa-brands fa-js',
    title: 'React js',
    color: '#61DAFB'
  },
  {
    logo: 'fa-brands fa-js',
    title: 'Redux',
    color: '#593D88'
  },
  {
    logo: 'fa-brands fa-js',
    title: 'Firebase',
    color: '#F7A110'
  },
]
</script>

<style scoped>
  .is-square{
    box-shadow: -3px -3px 0px 3px #E6642B;
    object-fit: contain;
    transition: box-shadow .3s;
  }
  .is-square:hover{
    box-shadow: 3px 3px 0px 3px #E6642B;
  }
  .cv-button{
    background: var(--secondaryColor) !important;
    color: #fff;
    padding: .3rem 1rem;
  }
  .tag{
    background: var(--secondaryColor);
    color: var(--darkColorFont);
  }
  .single-tag{
    background: var(--darkColorItems);
    padding: 2.5rem;
    transition: .3s;
    cursor: pointer;
  }
  .single-tag:hover{
    background: #E6642B !important;
  }
  .single-tag:hover  .fa-brands{
    transition: .3s;
    transform: scale(2);
    }
    .fa-brands{
      transition: .3s;
    }
  .p-tags{
    color: #000;
    font-size: 1.5rem;
    padding-top: .4rem;
    text-decoration: underline;
  }
  .has-text-lightt{
    color: #000;
  }
  /* dark mode */
  .dark .has-text-lightt{
    color: var(--darkColorFont);
  }
  .dark .single-tag{
    background: var(--darkColorItems);
  }
  .dark .p-tags{
    color: var(--darkColorFont);
    }
    .dark .info-columns{
      color: var(--darkColorFont);
    }
    .has-text-left{
      font-size: 1.2rem;
    }
</style>