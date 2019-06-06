import Chart from "chart.js";

//bar
// const initDashboard = () => {
//   var ctxB = document.getElementById("barChart").getContext('2d');
//   var myBarChart = new Chart(ctxB, {
//     type: 'bar',
//     data: {
//       labels: ["Daily Activities", "Future Me", "Interactions", "Curiosity"],
//       datasets: [{
//         data: [12, 19, 3, 5],
//         backgroundColor: [
//           'rgba(255, 99, 132, 0.2)',
//           'rgba(54, 162, 235, 0.2)',
//           'rgba(255, 206, 86, 0.2)',
//           'rgba(75, 192, 192, 0.2)'
//         ],
//         borderColor: [
//           'rgba(255,99,132,1)',
//           'rgba(54, 162, 235, 1)',
//           'rgba(255, 206, 86, 1)',
//           'rgba(75, 192, 192, 1)'
//         ],
//         borderWidth: 0.5
//       }]
//     },
//     options: {}
//   });
// }

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
        backgroundColor: ["rgba(219, 0, 0, 0.6)", "rgba(0, 165, 2, 0.6)", "rgba(255, 195, 15, 0.6)",
          "rgba(55, 59, 66, 0.6)"
        ],
        hoverBackgroundColor: ["rgba(219, 0, 0, 0.9)", "rgba(0, 165, 2, 0.9)",
          "rgba(255, 195, 15, 0.9)", "rgba(55, 59, 66, 0.9)"
        ]
      }]
    },
    options: {
      responsive: true
    }
  });
};

export default initPolar
