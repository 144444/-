<template>
  <h4>Какой сайт вам нужен?</h4>
  <form v-on:submit.prevent="formSubmit">
    <div class="input-field col s12">
      <select v-model="selected">
        <option v-for="option in options" :key="option.value">
          {{ option.text }}
        </option>
      </select>
    </div>
    <div class="design">
      <h4>Есть ли дизайн?</h4>
      <form class="design_form" action="#">
        <p>
          <label>
            <input
              id="design_form_input1"
              name="group1"
              type="radio"
              v-model="YesDisign"
              :value="1"
              checked
            />
            <span>Да, есть</span>
          </label>
        </p>
        <p>
          <label>
            <input
              id="design_form_input2"
              name="group1"
              type="radio"
              v-model="YesDisign"
              :value="2"
            />
            <span>Нет, не нужно</span>
          </label>
        </p>
      </form>
    </div>
    <div class="budget">
      <h4>Какой бюджет проекта?</h4>
      <div class="row budget_row">
        <div class="col s12">
          <div class="row">
            <div class="input-field col s12">
              <!-- <i class="material-icons prefix">textsms</i> -->
              <input
                type="number"
                id="autocomplete-input"
                class="autocomplete"
                v-model.number="sum"
              />
              <label for="autocomplete-input">Укажите сумму</label>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="wishes">
      <h4>Какие ваши пожелания?</h4>
      <div class="row">
        <form class="col s12">
          <div class="row">
            <div class="input-field col s12">
              <textarea
                v-model="message"
                id="textarea1"
                class="materialize-textarea"
              ></textarea>
              <label for="textarea1">Пожелания</label>
            </div>
          </div>
        </form>
      </div>
    </div>
    <button type="submit" class="waves-effect waves-light btn">
      Отправить
    </button>
  </form>
</template>
<script>
export default {
  data() {
    return {
      selected: "Выберите тип сайта",
      options: [
        { text: "Выберите тип сайта", value: "" },
        { text: "Корпоративный", value: "1" },
        { text: "Интернет магазин", value: "2" },
        { text: "Лендинг", value: "3" },
      ],
      YesDisign: [],
      sum: "",
      message: "",
    };
  },
  methods: {
    formSubmit() {
      console.log(this.selected, this.YesDisign, this.sum, this.message);
    },
  },
};
</script>

<style lang="scss" scoped>
.input-field {
  font-size: 30px;
  width: 500px;
  // .select-wrapper input.select-dropdown {
  //   opacity: 0.33;
  // }
}
</style>
