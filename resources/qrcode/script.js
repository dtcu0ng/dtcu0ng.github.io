function generateQRCode() {
    let text = document.getElementById("text-input").value;
    if (!text) {
        document.getElementById("error-message").innerText = "Please enter content to generate a QR code.";
        return;
    }
    document.getElementById("qrcode").innerHTML = "";
    let qrcode = new QRCode(document.getElementById("qrcode"), {
        text: text,
        width: 128,
        height: 128
    });
    document.getElementById("download-button").style.display = "block";
    document.getElementById("error-message").innerText = "";

    // Check the integrity of the generated QR code
    let canvas = document.getElementsByTagName('canvas')[0];
    let context = canvas.getContext('2d');
    let imagedata = context.getImageData(0, 0, canvas.width, canvas.height);
    let qr = qrcode.decode(imagedata);
    if (qr !== text) {
        document.getElementById("error-message").innerText = "The generated QR code could not be read back correctly. Please try again.";
    }
}

function downloadQRCode() {
    let canvas = document.getElementsByTagName('canvas')[0];
    if (!canvas) {
        document.getElementById("error-message").innerText = "Please generate a QR code before downloading.";
        return;
    }
    let img = canvas.toDataURL("image/png").replace("image/png", "image/octet-stream");
    let link = document.createElement('a');
    link.download = 'QRCode.png';
    link.href = img;
    link.click();
}