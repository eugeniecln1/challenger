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
