import Chart from "chart.js";

const initPolar = () => {
  //polar
  const canvas = document.getElementById("polarChart");
  if (canvas) {
    var ctxPA = canvas.getContext('2d');

    var myPolarChart = new Chart(ctxPA, {
      type: 'polarArea',
      data: {
        labels: ["Daily Activities", "Future Me", "Interactions", "Curiosity"],
        datasets: [{
          data: [canvas.dataset.daily, canvas.dataset.future, canvas.dataset.interactions, canvas.dataset.curiosity],
          backgroundColor: ["rgba(50, 16, 80, 0.7)", "rgba(161, 160, 220, 0.7)", "rgba(254, 194, 222, 0.7)",
            "rgba(255, 44, 83, 0.7)"
          ],
          hoverBackgroundColor: ["#F7DD4A", "#FA7B77", "#F49FBB",
            "#FFB668"
          ],
        }]
      },
      options: {
        legend: {
          labels: {
            fontFamily: 'Comfortaa'
          }
        }
      }
    });
  }
};


export default initPolar

