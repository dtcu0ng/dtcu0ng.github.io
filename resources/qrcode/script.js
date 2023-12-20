function generateQRCode() {
    let text = document.getElementById("text-input").value;
    if (!text) {
        document.getElementById("error-message").innerText = "Please enter some text to generate a QR code.";
        return;
    }
    document.getElementById("qrcode").innerHTML = "";
    let qrcode = new QRCode(document.getElementById("qrcode"), {
        text: text,
        width: 256,
        height: 256
    });
    document.getElementById("download-button").style.display = "block";
    document.getElementById("error-message").innerText = "";

    // Check the integrity of the generated QR code
    let canvas = document.getElementsByTagName('canvas')[0];
    let context = canvas.getContext('2d');
    let imageData = context.getImageData(0, 0, canvas.width, canvas.height);
    let code = jsQR(imageData.data, imageData.width, imageData.height);
    if (code && code.data !== text) {
        document.getElementById("error-message").innerText = "The generated QR code could not be read back correctly. Please try again.";
    }
}

function downloadQRCode() {
    var currentdate = new Date();
    var datetime = "_" + currentdate.getDate() + (currentdate.getMonth()+1) + currentdate.getFullYear() + "_" + currentdate.getHours() + currentdate.getMinutes() + currentdate.getSeconds();
    var qrimgname = "QR" + datetime + ".png"
    let canvas = document.getElementsByTagName('canvas')[0];
    if (!canvas) {
        document.getElementById("error-message").innerText = "Please generate a QR code before downloading.";
        return;
    }
    let img = canvas.toDataURL("image/png").replace("image/png", "image/octet-stream");
    let link = document.createElement('a');
    link.download = qrimgname;
    link.href = img;
    link.click();
}
