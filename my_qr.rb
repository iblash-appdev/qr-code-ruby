p 'hi'

require "rqrcode"

# Use the RQRCode::QRCode class to encode some text
qrcode = RQRCode::QRCode.new("wikipedia qr code")

# Use the .as_png method to create a 500 pixels by 500 pixels image
png = qrcode.as_png({ :size => 500 })

# Write the image data to a file
IO.binwrite("sometext.png", png.to_s)

p "What kind of QR Code would you like to generate?"
p "1. Open a URL"
p "2. Join a wifi network"
p "3. Send a text message"


kind_of_qrcode = gets.chomp
