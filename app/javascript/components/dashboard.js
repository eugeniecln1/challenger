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
          backgroundColor: ["rgba(22, 57, 72, 0.7)", "rgba(232, 98, 102, 0.7)", "rgba(84, 184, 203, 0.7)",
            "rgba(242, 188, 29, 0.7)"
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

