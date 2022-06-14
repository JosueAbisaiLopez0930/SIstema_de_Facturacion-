function loadImage(url) {
    return new Promise(resolve => {
        const xhr = new XMLHttpRequest();
        xhr.open('GET', url, true);
        xhr.responseType = "blob";
        xhr.onload = function (e) {
            const reader = new FileReader();
            reader.onload = function (event) {
                const res = event.target.result;
                resolve(res);
            }
            const file = this.response;
            reader.readAsDataURL(file);
        }
        xhr.send();
    });
}



window.addEventListener('click', async () => {

    const form = document.querySelector('#form2 ');
    form.addEventListener('submit', (e) => {

        if (document.getElementById('txtid') != null) {
            id = document.getElementById("txtid").value;
        }
        if (document.getElementById('txtfecha') != null) {
            fecha = document.getElementById("txtfecha").value;
        }
        if (document.getElementById('txtempresa') != null) {
            empresa = document.getElementById("txtempresa").value;
        }
        if (document.getElementById('txtnatural') != null) {
            natural = document.getElementById("txtnatural").value;
        }
        if (document.getElementById('txtrtn1') != null) {
            rtn1 = document.getElementById("txtrtn1").value;
        }
        if (document.getElementById('txtrtn2') != null) {
            rtn2 = document.getElementById("txtrtn2").value;
        }
        if (document.getElementById('txtdireccion1') != null) {
            direccion1 = document.getElementById("txtdireccion1").value;
        }
        if (document.getElementById('txtdireccion2') != null) {
            direccion2 = document.getElementById("txtdireccion2").value;
        }
        if (document.getElementById('txtdescripcion') != null) {
            descripcion = document.getElementById("txtdescripcion").value;
        }
        if (document.getElementById('txtcantidad') != null) {
            cantidad = document.getElementById("txtcantidad").value;
        }
        if (document.getElementById('txtprecio') != null) {
            precio = document.getElementById("txtprecio").value;
        }
        if (document.getElementById('txttotal') != null) {
            total = document.getElementById("txttotal").value;
        }
        if (document.getElementById('txtdescripcion0') != null) {
            descripcion0 = document.getElementById("txtdescripcion0").value;
        }
        if (document.getElementById('txtcantidad0') != null) {
            cantidad0 = document.getElementById("txtcantidad0").value;
        }
        if (document.getElementById('txtprecio0') != null) {
            precio0 = document.getElementById("txtprecio0").value;
        }
        if (document.getElementById('txttotal1') != null) {
            total1 = document.getElementById("txttotal1").value;
        }
        if (document.getElementById('txtdescripcion1') != null) {
            descripcion1 = document.getElementById("txtdescripcion1").value;
        }
        if (document.getElementById('txtcantidad1') != null) {
            cantidad1 = document.getElementById("txtcantidad1").value;
        }
        if (document.getElementById('txtprecio1') != null) {
            precio1 = document.getElementById("txtprecio1").value;
        }
        if (document.getElementById('txttotal2') != null) {
            total2 = document.getElementById("txttotal2").value;
        }
        if (document.getElementById('txtdescripcion2') != null) {
            descripcion2 = document.getElementById("txtdescripcion2").value;
        }
        if (document.getElementById('txtcantidad2') != null) {
            cantidad2 = document.getElementById("txtcantidad2").value;
        }
        if (document.getElementById('txtprecio2') != null) {
            precio2 = document.getElementById("txtprecio2").value;
        }
        if (document.getElementById('txttotal3') != null) {
            total3 = document.getElementById("txttotal3").value;
        }
        if (document.getElementById('txtdescripcion3') != null) {
            descripcion3 = document.getElementById("txtdescripcion3").value;
        }
        if (document.getElementById('txtcantidad3') != null) {
            cantidad3 = document.getElementById("txtcantidad3").value;
        }
        if (document.getElementById('txtprecio3') != null) {
            precio3 = document.getElementById("txtprecio3").value;
        }
        if (document.getElementById('txttotal4') != null) {
            total4 = document.getElementById("txttotal4").value;
        }
        if (document.getElementById('txtdescripcion4') != null) {
            descripcion4 = document.getElementById("txtdescripcion4").value;
        }
        if (document.getElementById('txtcantidad4') != null) {
            cantidad4 = document.getElementById("txtcantidad4").value;
        }
        if (document.getElementById('txtprecio4') != null) {
            precio4 = document.getElementById("txtprecio4").value;
        }
        if (document.getElementById('txttotal5') != null) {
            total5 = document.getElementById("txttotal5").value;
        }
        if (document.getElementById('txtdescripcion5') != null) {
            descripcion5 = document.getElementById("txtdescripcion5").value;
        }
        if (document.getElementById('txtcantidad5') != null) {
            cantidad5 = document.getElementById("txtcantidad5").value;
        }
        if (document.getElementById('txtprecio5') != null) {
            precio5 = document.getElementById("txtprecio5").value;
        }
        if (document.getElementById('txttotal6') != null) {
            total6 = document.getElementById("txttotal6").value;
        }
        if (document.getElementById('txtdescripcion6') != null) {
            descripcion6 = document.getElementById("txtdescripcion6").value;
        }
        if (document.getElementById('txtcantidad6') != null) {
            cantidad6 = document.getElementById("txtcantidad6").value;
        }
        if (document.getElementById('txtprecio6') != null) {
            precio6 = document.getElementById("txtprecio6").value;
        }
        if (document.getElementById('txttotal7') != null) {
            total7 = document.getElementById("txttotal7").value;
        }
        if (document.getElementById('txtdescripcion7') != null) {
            descripcion7 = document.getElementById("txtdescripcion7").value;
        }
        if (document.getElementById('txtcantidad7') != null) {
            cantidad7 = document.getElementById("txtcantidad7").value;
        }
        if (document.getElementById('txtprecio7') != null) {
            precio7 = document.getElementById("txtprecio7").value;
        }
        if (document.getElementById('txttotal8') != null) {
            total8 = document.getElementById("txttotal8").value;
        }
        if (document.getElementById('txtdescripcion8') != null) {
            descripcion8 = document.getElementById("txtdescripcion8").value;
        }
        if (document.getElementById('txtcantidad8') != null) {
            cantidad8 = document.getElementById("txtcantidad8").value;
        }
        if (document.getElementById('txtprecio8') != null) {
            precio8 = document.getElementById("txtprecio8").value;
        }
        if (document.getElementById('txttotal9') != null) {
            total9 = document.getElementById("txttotal9").value;
        }
        if (document.getElementById('txtsubtotal') != null) {
            subtotal = document.getElementById("txtsubtotal").value;
        }
        if (document.getElementById('txtdescuentos') != null) {
            descuento = document.getElementById("txtdescuentos").value;
        }
        if (document.getElementById('txtexenta') != null) {
            exenta = document.getElementById("txtexenta").value;
        }
        if (document.getElementById('txtexonerada') != null) {
            exonerada = document.getElementById("txtexonerada").value;
        }
        if (document.getElementById('txtgravada') != null) {
            gravada = document.getElementById("txtgravada").value;
        }
        if (document.getElementById('txtisv') != null) {
            isv = document.getElementById("txtisv").value;
        }
        if (document.getElementById('txttotal10') != null) {
            total10 = document.getElementById("txttotal10").value;
        }

            generatePDF(id, fecha, empresa, natural,rtn1, rtn2, direccion1, direccion2, descripcion, cantidad, precio, total,
                descripcion0, cantidad0, precio0, total1, descripcion1, cantidad1, precio1, total2,
                descripcion2, cantidad2, precio2, total3, descripcion3, cantidad3, precio3, total4,
                descripcion4, cantidad4, precio4, total5, descripcion5, cantidad5, precio5, total6,
                descripcion6, cantidad6, precio6, total7, descripcion7, cantidad7, precio7, total8,
                descripcion8, cantidad8, precio8, total9, subtotal, descuento, exenta, exonerada, isv, total10);
        })

});

async function generatePDF(id, fecha, empresa, natural, rtn1, rtn2, direccion1, direccion2, descripcion, cantidad, precio, total,
    descripcion0, cantidad0, precio0, total1, descripcion1, cantidad1, precio1, total2,
    descripcion2, cantidad2, precio2, total3, descripcion3, cantidad3, precio3, total4,
    descripcion4, cantidad4, precio4, total5, descripcion5, cantidad5, precio5, total6,
    descripcion6, cantidad6, precio6, total7, descripcion7, cantidad7, precio7, total8,
    descripcion8, cantidad8, precio8, total9, subtotal, descuento, exenta, exonerada, isv, total10) {
    const image = await loadImage("factura.jpg");

    const pdf = new jsPDF('p', 'pt', 'letter');

    pdf.addImage(image, 'PNG', 0, 0, 580, 792);

    pdf.setFontSize(20);
    pdf.setFontType("bold");
    pdf.setTextColor(255, 0, 0);
    pdf.text(id, 110, 210);

    pdf.setFontSize(12);
    pdf.setFontType("bold");
    pdf.setTextColor(0, 0, 0);
    pdf.text(fecha, 415, 260);
    pdf.text(empresa, 120, 240);
    pdf.text(natural, 120, 240);
    pdf.text(rtn1, 120, 262);
    pdf.text(rtn2, 120, 262);
    pdf.text(direccion1, 130, 283);
    pdf.text(direccion2, 130, 283);
    pdf.text(descripcion, 125, 350);
    pdf.text(cantidad, 95, 350);
    pdf.text(precio, 345, 350);
    pdf.text(total, 452, 350);
    pdf.text(descripcion0, 125, 370);
    pdf.text(cantidad0, 95, 370);
    pdf.text(precio0, 345, 370);
    pdf.text(total1, 452, 370);
    pdf.text(descripcion1, 125, 390);
    pdf.text(cantidad1, 95, 390);
    pdf.text(precio1, 345, 390);
    pdf.text(total2, 452, 390);
    pdf.text(descripcion2, 125, 410);
    pdf.text(cantidad2, 95, 410);
    pdf.text(precio2, 345, 410);
    pdf.text(total3, 452, 410);
    pdf.text(descripcion3, 125, 430);
    pdf.text(cantidad3, 95, 430);
    pdf.text(precio3, 345, 430);
    pdf.text(total4, 452, 430);
    pdf.text(descripcion4, 125, 450);
    pdf.text(cantidad4, 95, 450);
    pdf.text(precio4, 345, 450);
    pdf.text(total5, 452, 450);
    pdf.text(descripcion5, 125, 470);
    pdf.text(cantidad5, 95, 470);
    pdf.text(precio5, 345, 470);
    pdf.text(total6, 452, 470);
    pdf.text(descripcion6, 125, 490);
    pdf.text(cantidad6, 95, 490);
    pdf.text(precio6, 345, 490);
    pdf.text(total7, 452, 490);
    pdf.text(descripcion7, 125, 510);
    pdf.text(cantidad7, 95, 510);
    pdf.text(precio7, 345, 510);
    pdf.text(total8, 452, 510);
    pdf.text(descripcion8, 125, 530);
    pdf.text(cantidad8, 95, 530);
    pdf.text(precio8, 345, 530);
    pdf.text(total9, 452, 530);
    pdf.text(subtotal, 452, 550);
    pdf.text(descuento, 452, 567);
    pdf.text(exenta, 452, 585);
    pdf.text(exonerada, 452, 602);
    pdf.text(gravada, 452, 620);
    pdf.text(isv, 452, 636);
    pdf.text(total10, 440, 665);

    pdf.save("factura.pdf");

}