<template>
  <div id="app">
    <h1>Калькулятор стоимости</h1>
    <TypeProgects />
  </div>
</template>

<script>
import M from "materialize-css";
import TypeProgects from "./components/TypeProgects.vue";
export default {
  components: {
    TypeProgects,
  },
  mounted() {
    M.AutoInit();
  },
};
</script>

<style lang="scss">
@import "./assets/style";
@import "~materialize-css/dist/css/materialize.min.css";
</style>
