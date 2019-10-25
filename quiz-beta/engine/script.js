// Số câu hỏi 
var numQues = 40;
//Số phương án trả lời 
var numChoi = 4;
//Số câu hỏi được hiển thị đáp án 
var answers = new Array(40);
// Đáp án đúng cho câu hỏi 
answers[0] = "C"; 
answers[1] = "A";
answers[2] = "A";
answers[3] = "A";
answers[4] = "A";
answers[5] = "A";
answers[6] = "A";
answers[7] = "A";
answers[8] = "A";
answers[9] = "A";
answers[10] = "A";
answers[11] = "A";
answers[12] = "A";
answers[13] = "A";
answers[14] = "A";
answers[15] = "A";
answers[16] = "A";
answers[17] = "A";
answers[18] = "A";
answers[19] = "A";
answers[20] = "A";
answers[21] = "A";
answers[22] = "A";
answers[23] = "A";
answers[24] = "A";
answers[25] = "A";
answers[26] = "A";
answers[27] = "A";
answers[28] = "A";
answers[29] = "A";
answers[30] = "A";
answers[31] = "A";
answers[32] = "A";
answers[33] = "A";
answers[34] = "A";
answers[35] = "A";
answers[36] = "A";
answers[37] = "A";
answers[38] = "A";
answers[39] = "A";
answers[40] = "A";
function getScore(form) {
   Swal.fire({
      position: 'top-end',
      type: 'success',
      title: 'Đã tính toán kết quả thành công.',
      showConfirmButton: false,
      timer: 1500
    })
  var score = 0;
  var currElt;
  var currSelection;
  for (i=0; i<numQues; i++) {
     currElt = i*numChoi; 
     for (j=0; j<numChoi; j++) {
        currSelection = form.elements[currElt + j]; 
        if (currSelection.checked) {
           if (currSelection.value == answers[i]) {
              score++; 
              break;
        }
      }
    }
  }
  score = Math.round(score/numQues*100); 
  form.percentage.value = score + "%" ; 
  var correctAnswers = "";
  for (i=1; i<=numQues; i++) {
     correctAnswers += i + ". " + answers[i-1] + "\r\n";
  }
  form.solutions.value = correctAnswers;
}
function reset(aform) {
   Swal.fire({
      position: 'top-end',
      type: 'success',
      title: 'Đã xóa toàn bộ kết quả.',
      showConfirmButton: true,
      timer: 1500
    })
}