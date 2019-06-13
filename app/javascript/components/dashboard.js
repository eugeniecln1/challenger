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
          backgroundColor: ["rgba(242, 161, 71, 1)", "rgba(131, 67, 234, 1)", "rgba(110, 229, 176, 1)",
            "rgba(237, 104, 97, 1)"
          ],
          hoverBackgroundColor: ["rgba(242, 161, 71, 0.7)", "rgba(131, 67, 234, 0.7)", "rgba(110, 229, 176, 0.7)",
            "rgba(237, 104, 97, 0.7)"
          ],
        }]
      },
      options: {
        legend: {
          position: 'left',
          labels: {
            fontFamily: 'Comfortaa',
          }
        }
      }
    });
  }
};


export default initPolar;

