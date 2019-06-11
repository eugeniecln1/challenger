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
          backgroundColor: ["rgba(247, 221, 74, 0.7)", "rgba(250, 123, 119, 0.7)", "rgba(244, 159, 187, 0.7)",
            "rgba(255, 182, 104, 0.7)"
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
