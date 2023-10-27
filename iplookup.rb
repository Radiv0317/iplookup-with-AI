require 'socket'

def get_ip_address(domain)
  ip_address = Socket.getaddrinfo(domain, nil, Socket::AF_UNSPEC)
  ip_address[0][3]
end

# Contoh penggunaan:
website = 'rdlza.site'  # Ganti dengan nama domain yang ingin Anda identifikasi

begin
  ip = get_ip_address(website)
  puts "Alamat IP dari #{website} adalah: #{ip}"
rescue SocketError => e
  puts "Gagal mengidentifikasi alamat IP: #{e.message}"
end