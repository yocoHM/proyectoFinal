
pdf.font "Times-Roman"

pdf.text "<u>Alto Tráfico", :size => 18, :spacing => 4, :align => :center, :leading => 20, :inline_format => true

pdf.text "<b>Cotización</b>", :size => 16, :spacing => 4, :inline_format => true, :leading => 20

pdf.text "Cliente: #{@obra.cliente.nombre}", :size => 16, :spacing => 4, :inline_format => true, :leading => 5
pdf.text "- RFC: #{@obra.cliente.rfc}", :spacing => 16, :size => 11, :indent_paragraphs => 18, :leading => 5
pdf.text "- Dirección: #{@obra.cliente.direccion}", :spacing => 16, :size => 11, :indent_paragraphs => 18, :leading => 5
pdf.text "- Teléfono: #{@obra.cliente.telefono}", :spacing => 16, :size => 11, :indent_paragraphs => 18, :leading => 5
pdf.text "- Email: #{@obra.cliente.email}", :spacing => 16, :size => 11, :indent_paragraphs => 18, :leading => 5

pdf.text "Obra", :size => 16, :spacing => 4, :inline_format => true, :leading => 5
pdf.text "- Fecha de inicio: #{@obra.inicio}", :spacing => 16, :size => 11, :indent_paragraphs => 18, :leading => 5
pdf.text "- Fecha de entrega: #{@obra.entrega}", :spacing => 16, :size => 11, :indent_paragraphs => 18, :leading => 5

pdf.text "Productos", :size => 16, :spacing => 4, :inline_format => true, :leading => 5
producto = @producto.each do |producto|
pdf.text "",:leading => 2
pdf.text "- Nombre: #{producto.nombre}", :spacing => 16, :size => 11, :indent_paragraphs => 18, :leading => 5
pdf.text "- Localidad: #{producto.direccion}", :spacing => 16, :size => 11, :indent_paragraphs => 18, :leading => 5
pdf.text "- Metros cuadrados: #{producto.m2}", :spacing => 16, :size => 11, :indent_paragraphs => 18, :leading => 5
pdf.text "- Precio: $#{producto.precio} MXN", :spacing => 16, :size => 11, :indent_paragraphs => 18, :leading => 5
pdf.text "- Subtotal: #{producto.m2*producto.precio}", :spacing => 16, :size => 11, :indent_paragraphs => 18, :leading => 2

@total += producto.m2*producto.precio

pdf.text "---------------------------------------------------------------------------------------------------------------------------------------"

end

pdf.text "", :leading => 20
pdf.text "Total: $#{@total}", :size => 16, :spacing => 4, :inline_format => true


 