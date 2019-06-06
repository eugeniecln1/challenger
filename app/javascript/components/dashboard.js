import Chart from "chart.js";

const initPolar = () => {
  //polar
  console.log("hello");
  var ctxPA = document.getElementById("polarChart").getContext('2d');
  var myPolarChart = new Chart(ctxPA, {
    type: 'polarArea',
    data: {
      labels: ["Daily Activities", "Future Me", "Interactions", "Curiosity"],
      datasets: [{
        data: [200, 150, 90, 120],
        backgroundColor: ["rgba(247, 221, 74, 0.7)", "rgba(250, 123, 119, 0.7)", "rgba(244, 159, 187, 0.7)",
          "rgba(255, 182, 104, 0.7)"
        ],
        hoverBackgroundColor: ["#F7DD4A", "#FA7B77", "#F49FBB",
          "#FFB668"
        ],
      }]
    },
    options: {
      responsive: true
    }
  });
};

export default initPolar
