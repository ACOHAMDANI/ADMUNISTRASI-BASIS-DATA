use db_peraktikum;

-- memunculkan kode_pelanggan, dan jumlah quantity peroduk yg dineli, dan total harga dari semua produk yang pernah ditransaksikan, namun output
-- yang didalam  total harga minimal 200.000 dan di urutkan  dengan total harga;
select kode_pelanggan, nama_produk, qty , harga, qty*harga as total_harga
from tr_penjualan_dqlab where harga <= 200000 order by total_harga desc;

-- munculkan kode_transaksi, kode_pelanggan, nama_pelanggan, kode_produk, harga,quantitynya,dann  total yang quantitynya diatas 
select tp.kode_transaksi, tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_peroduk, tp.kode_perodak, tp.harga, tp.qty
from tr_penjualan_dqlab as tp
join ms_pelanggan_dqlab as mp
on tp.kode_transaksi = mp.kode_pelanggan;

-- munculkan nama_peroduk
 select 