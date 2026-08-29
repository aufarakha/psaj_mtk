#import "template.typ": *

#show: psaj-doc

// ============================================================
//  HALAMAN SAMPUL
// ============================================================
#set page(numbering: none)

#align(center)[
  #v(1cm)
  #text(weight: "bold", size: 13pt, tracking: 0.5pt)[LAPORAN PROYEK] \
  #v(0.3em)
  #text(weight: "bold", size: 13pt)[PENILAIAN SUMATIF AKHIR JENJANG (PSAJ)] \
  #v(0.3em)
  #text(weight: "bold", size: 13pt)[TAHUN AJARAN 2026/2027]

  #v(1.5em)

  /*#rect(
    stroke: (paint: black, thickness: 1.5pt),
    inset: (x: 1.2em, y: 0.7em),
  )[*/
    #text(weight: "bold", size: 14pt)[\[JUDUL PROJEK\]]
  //]

  #v(1.5em)
  #image("assets/telkom-logo.png", width: 3.5cm)
  #v(1.5em)

  Disusun oleh:

  #v(0.5em)
  #align(left)[
    #pad(left: 3cm)[
      #set text(size: 12pt)
      + Adzkya Gharizi Fajri Anwar (NIS 541241008)
      + Aufa Rakha Aesar Aulayain (NIS 541241028)
      + Andrean Rayhan Wijaya (NIS 54124018)
    ]
  ]

  #v(1cm)

  #text(weight: "bold")[PROGRAM KEAHLIAN PENGEMBANGAN PERANGKAT LUNAK DAN GIM] \
  #v(0.3em)
  #text(weight: "bold")[SMK TELKOM PURWOKERTO] \
  #v(0.3em)
  #text(weight: "bold")[TAHUN AJARAN 2026/2027]

  #v(1cm)
]

#pagebreak()

// ============================================================
//  BAGIAN AWAL — nomor romawi, mulai ii
// ============================================================
#set page(
  numbering: "i",
  number-align: center,
  footer: context {
    align(center, text(size: 11pt)[#counter(page).display("i")])
  },
)
#counter(page).update(2)

// ─── ii: CATATAN PENGGUNAAN TEMPLATE ────────────────────────
= CATATAN PENGGUNAAN TEMPLATE

#catatan[
  Seluruh teks miring berwarna abu-abu di dalam template ini adalah
  keterangan pembantu, *bukan bagian dari isi laporan*. Hapus keterangan
  tersebut selama proses pengerjaan; pada laporan yang dikumpulkan tidak
  boleh ada lagi teks abu-abu yang tersisa.
]
#catatan[
  Halaman "Catatan Penggunaan Template" ini juga dihapus sebelum
  laporan dikumpulkan.
]
#catatan[
  Teks bertitik-titik dan sel tabel kosong adalah tempat isian. Urutan
  BAB dan sub-bab tidak boleh diubah, tetapi Anda boleh menambah bagian
  bila proyek membutuhkannya.
]
#catatan[
  *Ketentuan penulisan:* kertas A4, margin kiri 4 cm dan sisi lain
  3 cm, huruf Times New Roman 12, spasi 1,5, rata kiri-kanan.
  Judul gambar diletakkan di bawah gambar, judul tabel di atas tabel.
]
#catatan[
  Konsep kegiatan, tahapan pengumpulan, dan aspek penilaian dijelaskan
  pada dokumen terpisah: _"Panduan dan Konsep PSAJ Kejuruan PPLG Tahun
  Pelajaran 2026/2027"_.
]

#pagebreak()

// ─── iii: LEMBAR PENGESAHAN ──────────────────────────────────
= LEMBAR PENGESAHAN

Laporan Proyek PSAJ dengan judul "#underline[................................................]"
yang disusun oleh kelompok #underline[..............................] Program
Keahlian Pengembangan Perangkat Lunak dan Gim SMK Telkom Purwokerto
telah diperiksa dan disahkan pada:

#v(0.5em)
Hari / Tanggal #h(0.5em) : #h(0.5em) #underline[...............................................]

#v(1.5em)

#let ttd-box(label) = {
  rect(width: 100%, height: 5.5cm, stroke: 0.6pt)[
    #align(top + left)[
      #pad(6pt)[#text(weight: "bold")[#label]]
    ]

    
    #align(bottom + center)[
      #pad(bottom: 8pt)[
        (#box(width: 7cm)[#repeat[.]])
      ]
    ]
  ]
}

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.5cm,
  row-gutter: 0.5cm,
  ttd-box[Guru Pembimbing],
  ttd-box[Koordinator Program Keahlian PPLG],
  ttd-box[Perwakilan Klien / Mitra],
  ttd-box[Kepala SMK Telkom Purwokerto],
)

#pagebreak()

// ─── iv: KATA PENGANTAR ──────────────────────────────────────
= KATA PENGANTAR

#catatan[
  Tulis 3–4 paragraf: ucapan syukur dan judul laporan, gambaran
  singkat isi proyek, ucapan terima kasih (sekolah, pembimbing, klien,
  orang tua), serta permohonan kritik dan saran.
]

#isian(baris: 8)

#v(1em)
#align(right)[
  Purwokerto, #box(width: 4cm)[#repeat[.]] 202...

  #v(3em)
  Penyusun
]

#pagebreak()

// ─── v: DAFTAR ISI ───────────────────────────────────────────
= DAFTAR ISI

#catatan[
  Daftar isi ini dibuat otomatis oleh Typst. Kompilasi ulang dokumen
  setelah isi selesai ditulis agar nomor halaman menyesuaikan.
]

#outline(
  title: none,
  indent: auto,
  depth: 2,
)

#pagebreak()

// ============================================================
//  BAGIAN ISI — nomor biasa, mulai 1
// ============================================================
#set page(
  numbering: "1",
  footer: context {
    align(center, text(size: 11pt)[#counter(page).display("1")])
  },
)
#counter(page).update(1)

// ============================================================
//  BAB I — PENDAHULUAN
// ============================================================
#mulai-bab("I", 1, "PENDAHULUAN")

#catatan[
  BAB I dan BAB II dikumpulkan pada *Tahap 1 (Minggu 1–2)* untuk
  Review Proposal / Design Review.
]

#subbab("A", "Latar Belakang Masalah")

#catatan[
  Jelaskan mengapa proyek ini dibuat: kondisi klien saat ini, masalah
  yang muncul, dan mengapa dibutuhkan solusi digital yang memanfaatkan
  AI. Cukup 3–4 paragraf.
]

#isian(teks: [#h(1.27cm)Ini adalah contoh kalimat yang sangat panjang sekali sehingga akan otomatis turun ke baris bawah menyesuaikan margin halaman dokumen laporan Anda.])

#subbab("B", "Rumusan Masalah")

#catatan[
  Tuliskan nama usaha/instansi klien, bidang usaha, alamat, narahubung,
  produk atau layanan yang ditawarkan, serta cara kerja klien saat ini.
  Cantumkan kapan wawancara atau observasi dilakukan.
]

#isian(baris: 5, pakai-titik: true)

#subbab("C", "Tujuan Penelitian")

#catatan[
  Sebutkan masalah nyata klien berdasarkan hasil wawancara atau
  observasi (cukup 2–4 masalah utama) beserta dampaknya. Tandai masalah
  mana yang akan dibantu penyelesaiannya dengan AI.
]

#isian(baris: 5)

#subbab("D", "Manfaat Penelitian")

#catatan[
  Tuliskan manfaat proyek ini bagi klien, sekolah, dan anggota
  kelompok, dalam bentuk daftar bernomor.
]

#nomor(
  [#box(width: 13.5cm)[#repeat[.]]],
  [#box(width: 13.5cm)[#repeat[.]]],
  [#box(width: 13.5cm)[#repeat[.]]],
)

#subbab("E", "Batasan Masalah")

#catatan[
  Tuliskan batasan ruang lingkup proyek agar target pengerjaan jelas
  dan realistis. Cukup 2–4 butir.
]

#nomor(
  [#box(width: 16cm)[#repeat[.]]],
  [#box(width: 16cm)[#repeat[.]]],
  [#box(width: 16cm)[#repeat[.]]],
)

// ============================================================
//  BAB II — KAJIAN PUSTAKA
// ============================================================
#mulai-bab("II", 2, "KAJIAN PUSTAKA")

#subbab("A", "Tinjauan Objek Penelitian")

#catatan[
  Tuliskan fitur yang harus ada pada sistem (kebutuhan fungsional) dan
  siapa penggunanya. Tambahkan pula kebutuhan pendukung seperti
  perangkat, perangkat lunak, dan koneksi yang diperlukan.
]

#tbl("Kebutuhan Fungsional",
  table(
    columns: (2.5cm, 1fr, 3.5cm),
    stroke: 0.6pt,
    inset: 8pt,
    align: (center, left, center),
    table.header(
      strong[Kode], strong[Fitur / Kebutuhan Sistem], strong[Pengguna]
    ),
    [KF-01], [], [],
    [KF-02], [], [],
    [KF-03], [], [],
    [KF-04], [], [],
  )
)

#subbab("B", "Konsep Statistika Deskriptif Berkelompok")

#catatan[
  Sisipkan use case diagram yang menggambarkan interaksi pengguna
  dengan fitur sistem, lalu jelaskan singkat isinya dalam satu paragraf.
]

#gbr("Use Case Diagram", kotak("[ Sisipkan Use Case Diagram ]"))

#subbab("C", "Konsep Visualisasi Data")

#catatan[
  Dibuat hanya untuk proses yang alurnya cukup panjang atau memiliki
  percabangan. Jika tidak dibuat, tuliskan alasan singkatnya.
]

#gbr("Activity Diagram", kotak("[ Sisipkan Activity Diagram (jika ada) ]"))

#subbab("D", "Konsep Analisis Korelasi dan Regresi Linear")

#catatan[
  Sisipkan ERD atau rancangan tabel basis data, lalu jelaskan singkat
  setiap tabel dan hubungannya.
]

#gbr("Entity Relationship Diagram", kotak("[ Sisipkan ERD / rancangan basis data ]"))

#subbab("E", "Desain Antarmuka (UI/UX)")

#catatan[
  Sisipkan rancangan tampilan (wireframe atau mockup) halaman-halaman
  utama beserta penjelasan singkatnya. Sebutkan juga alat yang dipakai,
  misalnya Figma.
]

#gbr("Desain Antarmuka", kotak("[ Sisipkan desain antarmuka ]"))

#subbab("F", "Arsitektur Sistem")

#catatan[
  Gambarkan susunan sistem: aplikasi pengguna, peladen, basis data, dan
  layanan AI yang dipakai, lalu jelaskan alur datanya secara singkat.
]

#gbr("Arsitektur Sistem", kotak("[ Sisipkan diagram arsitektur sistem ]"))

#subbab("G", "Rencana Implementasi AI")

#catatan[
  Bagian wajib. Jelaskan empat hal berikut secara ringkas:
  (1) masalah yang akan dibantu AI dan alasannya;
  (2) jenis AI atau layanan yang akan dipakai;
  (3) data yang dibutuhkan AI dan dari mana asalnya;
  (4) cara mengukur keberhasilan AI nanti saat pengujian.
]

#isian(baris: 6)

// ============================================================
//  BAB III — METODE PENELITIAN
// ============================================================
#mulai-bab("III", 3, "METODE PENELITIAN")

#catatan[
  BAB III sampai BAB V dikumpulkan pada *Tahap 3 (Minggu 8)* untuk
  Final Review.
]

#subbab("A", "Waktu dan Tempat Penelitian")

#catatan[
  Sebutkan kapan dan di mana penelitian/pengembangan dilakukan
  (tanggal mulai–selesai, lokasi klien, sekolah, dll.).
]

#isian(baris: 4)

#subbab("B", "Sumber dan Jenis Data")

#catatan[
  Jelaskan sumber data yang digunakan (primer/sekunder) dan jenis
  datanya (kualitatif/kuantitatif, terstruktur/tidak terstruktur).
]

#isian(baris: 4)

#subbab("C", "Teknik Pengumpulan Data")

#catatan[
  Jelaskan cara mengumpulkan data: wawancara, observasi, kuesioner,
  atau mengambil dari API/dataset publik. Sebutkan instrumen yang
  digunakan.
]

#isian(baris: 5)

#subbab("D", "Teknik Analisis Data")

#catatan[
  Jelaskan metode analisis yang digunakan (statistika deskriptif,
  regresi, klasifikasi, dsb.) beserta alat bantu (Python, R, Excel).
]

#isian(baris: 5)

#tbl("Teknologi yang Digunakan",
  table(
    columns: (5cm, 1fr),
    stroke: 0.6pt,
    inset: 8pt,
    align: (left, left),
    table.header(
      strong[Teknologi], strong[Fungsi / Alasan Dipilih]
    ),
    [], [],
    [], [],
    [], [],
    [], [],
  )
)

#tbl("Informasi Akses Produk",
  table(
    columns: (6cm, 1fr),
    stroke: 0.6pt,
    inset: 8pt,
    align: (left, left),
    table.header(
      strong[Keterangan], strong[Isian]
    ),
    [Alamat produk / tautan], [],
    [Tautan repository kode], [],
    [Akun peragaan (nama pengguna & kata sandi uji)], [],
  )
)

// ============================================================
//  BAB IV — HASIL PENELITIAN DAN PEMBAHASAN
// ============================================================
#mulai-bab("IV", 4, "HASIL PENELITIAN DAN PEMBAHASAN")

#subbab("A", "Pengolahan Data Awal")

#catatan[
  Jelaskan produk yang berhasil dibuat, fitur apa saja yang berjalan,
  dan bila ada fitur yang belum terwujud sebutkan alasannya.
]

#isian(baris: 5)

#subbab("B", "Tabel Distribusi Frekuensi & Ukuran Pemusatan Data")

#catatan[
  Sajikan tabel distribusi frekuensi data yang diolah beserta
  perhitungan mean, median, modus, dan ukuran penyebaran.
]

#gbr("Tampilan Halaman ...", kotak("[ Sisipkan tangkapan layar aplikasi ]"))

#subbab("C", "Penyajian Visual Data")

#catatan[
  Uji setiap fitur pada Tabel 2.1 dan isi hasilnya pada tabel berikut.
  Sertakan pula beberapa baris pengujian untuk fitur AI. Tuliskan hasil
  apa adanya, termasuk yang belum berhasil.
]

#tbl("Hasil Pengujian",
  table(
    columns: (1.8cm, 3.5cm, 1fr, 3cm),
    stroke: 0.6pt,
    inset: 7pt,
    align: (center, left, left, center),
    table.header(
      strong[Kode],
      strong[Yang Diuji],
      strong[Hasil yang Diharapkan],
      strong[Hasil Uji \ (Berhasil / Belum)],
    ),
    [KF-01], [], [], [],
    [KF-02], [], [], [],
    [KF-03], [], [], [],
    [AI-01], [Fitur AI: ...], [], [],
  )
)

#subbab("D", "Uji Korelasi Variabel")

#catatan[
  Jelaskan pelaksanaan uji coba produk oleh klien: kapan dilakukan,
  tanggapan dan masukan klien, serta perbaikan yang sudah dilakukan.
  Lampirkan lembar validasi yang ditandatangani klien.
]

#isian(baris: 5)

#subbab("E", "Pemodelan Regresi Linear")

#catatan[
  Hitung biaya pembuatan produk (tenaga kerja, hosting/domain, layanan
  AI, biaya lain), lalu tentukan harga jual beserta alasannya.
]

#tbl("Perhitungan Harga Produk",
  table(
    columns: (8cm, 1fr),
    stroke: 0.6pt,
    inset: 8pt,
    align: (left, left),
    table.header(
      strong[Komponen], strong[Jumlah Biaya]
    ),
    [Tenaga kerja], [],
    [Domain dan hosting], [],
    [Layanan / kuota AI], [],
    [Biaya lain-lain], [],
    table.hline(stroke: 1pt),
    [*Total biaya produksi*], [],
    [Keuntungan (... %)], [],
    table.hline(stroke: 1pt),
    [*Harga jual produk*], [],
  )
)

#subbab("F", "Pitching Produk")

#catatan[
  Jelaskan singkat isi presentasi kepada klien dan juri (masalah,
  solusi, peragaan produk, keunggulan AI, harga), pembagian peran saat
  presentasi, serta tanggapan yang diterima. Sisipkan dokumentasi
  kegiatan.
]

#isian(baris: 5)

// ============================================================
//  BAB V — PENUTUP
// ============================================================
#mulai-bab("V", 5, "PENUTUP")

#subbab("A", "Kesimpulan")

#catatan[
  Jawab tujuan pada BAB I: produk apa yang berhasil dibuat, masalah
  klien mana yang terselesaikan, dan bagaimana hasil pengujiannya.
  Tulis dalam daftar bernomor.
]

#nomor(
  [#box(width: 16cm)[#repeat[.]]],
  [#box(width: 16cm)[#repeat[.]]],
)

#subbab("B", "Saran")

#catatan[
  Tuliskan saran untuk pengembangan produk selanjutnya dan untuk
  klien dalam memanfaatkan produk.
]

#nomor(
  [#box(width: 16cm)[#repeat[.]]],
  [#box(width: 16cm)[#repeat[.]]],
)

// ============================================================
//  DAFTAR PUSTAKA
// ============================================================
#pagebreak(weak: true)

#align(center)[
  #v(0.4em)
  #text(weight: "bold", size: 14pt)[DAFTAR PUSTAKA]
  #v(0.8em)
]

#catatan[
  Tuliskan sumber yang Anda kutip, disusun menurut abjad, dengan
  format APA. Contoh: \
  _Nama belakang, Inisial. (Tahun). Judul. Penerbit atau alamat situs._
]

#isian(baris: 3)

// ============================================================
//  LAMPIRAN
// ============================================================
#pagebreak(weak: true)

#align(center)[
  #v(0.4em)
  #text(weight: "bold", size: 14pt)[LAMPIRAN]
  #v(0.8em)
]

#catatan[Sertakan berkas pendukung berikut.]

+ Surat kesediaan klien.
+ Hasil wawancara dengan klien.
+ Lembar validasi / serah terima produk yang ditandatangani klien.
+ Lembar bimbingan (logbook).
+ Tautan repository, tautan produk, dan materi pitching.
+ Dokumentasi kegiatan: pertemuan dengan klien, pengujian, dan Product Expo.
