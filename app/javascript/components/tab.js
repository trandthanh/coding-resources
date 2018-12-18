function tab() {
  const buttonCourse = document.getElementById("button-course");
  const buttonTutorial = document.getElementById("button-tutorial");

  const tabCourse = document.getElementById("results-tab-lesson");
  const tabTutorial = document.getElementById("results-tab-tutorial");

  buttonTutorial.addEventListener("click", (event) => {
    if (buttonTutorial.classList.contains('inactive')) {
      buttonCourse.classList.remove("active");
      buttonCourse.classList.add("inactive");

      buttonTutorial.classList.remove("inactive");
      buttonTutorial.classList.add("active");
    }

    if (tabTutorial.classList.contains('invisible')) {
      tabCourse.classList.remove("visible");
      tabCourse.classList.add("invisible");

      tabTutorial.classList.remove("invisible");
      tabTutorial.classList.add("visible");
    }
  });

  buttonCourse.addEventListener("click", (event) => {
    if (buttonCourse.classList.contains('inactive')) {
      buttonTutorial.classList.remove("active");
      buttonTutorial.classList.add("inactive");

      buttonCourse.classList.remove("inactive");
      buttonCourse.classList.add("active");
    }

    if (tabCourse.classList.contains('invisible')) {
      tabCourse.classList.remove("invisible");
      tabCourse.classList.add("visible");

      tabTutorial.classList.remove("visible");
      tabTutorial.classList.add("invisible");
    }
  });
};

export { tab }
