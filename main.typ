#import "template.typ": *

#show: psaj-doc

// ============================================================
//  HALAMAN SAMPUL
// ============================================================
#set page(numbering: none)

#align(center)[
  #v(0.5cm)
  #text(weight: "bold", size: 13pt, tracking: 0.5pt)[LAPORAN PROYEK] \
  #v(0.3em)
  #text(weight: "bold", size: 13pt)[PENILAIAN SUMATIF AKHIR JENJANG (PSAJ)] \
  #v(0.3em)
  #text(weight: "bold", size: 13pt)[MATA PELAJARAN MATEMATIKA / STATISTIKA] \
  #v(0.3em)
  #text(weight: "bold", size: 12pt)[TAHUN AJARAN 2026/2027]

  #v(1.2em)

  #text(weight: "bold", size: 14pt)[
    ANALISIS STATISTIKA DESKRIPTIF DAN PEMODELAN REGRESI LINEAR: \
    PENGARUH PERSENTASE PENDUDUK BERPENDIDIKAN SMA KE ATAS \
    TERHADAP TINGKAT PENGANGGURAN TERBUKA DI INDONESIA
  ]

  #v(1.2em)
  #image("assets/telkom-logo.png", width: 3.2cm)
  #v(1.2em)

  Disusun oleh:

  #v(0.3em)
  #align(left)[
    #pad(left: 2.8cm)[
      #set text(size: 12pt)
      + Adzkya Gharizi Fajri Anwar (NIS 541241008)
      + Aufa Rakha Aesar Aulayain (NIS 541241028)
      + Andrean Rayhan Wijaya (NIS 54124018)
    ]
  ]

  #v(0.8cm)

  #text(weight: "bold", tracking: -0.2pt)[PROGRAM KEAHLIAN PENGEMBANGAN PERANGKAT LUNAK DAN GIM] \
  #v(0.2em)
  #text(weight: "bold")[SMK TELKOM PURWOKERTO] \
  #v(0.2em)
  #text(weight: "bold")[TAHUN AJARAN 2026/2027]

  #v(0.5cm)
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

// ─── ii: LEMBAR PENGESAHAN ──────────────────────────────────
= LEMBAR PENGESAHAN

#isian(teks: [Laporan Proyek PSAJ dengan judul *"Analisis Statistika Deskriptif dan Pemodelan Regresi Linear: Pengaruh Persentase Penduduk Berpendidikan SMA ke Atas terhadap Tingkat Pengangguran Terbuka di Indonesia"* yang disusun oleh Kelompok Program Keahlian Pengembangan Perangkat Lunak dan Gim SMK Telkom Purwokerto telah diperiksa dan disahkan pada:])

#v(0.5em)
#isian(teks: [Hari / Tanggal #h(0.5em) : #h(0.5em) Sabtu, 29 Agustus 2026])

#v(1em)

#let ttd-box(label, nama: "", gambar: none) = {
  rect(width: 100%, height: 5.2cm, stroke: 0.6pt)[
    #set text(font: ("Times New Roman", "TeX Gyre Termes", "Liberation Serif"), size: 11pt)
    #set align(center)
    #pad(top: 8pt)[#text(weight: "bold")[#label]]
    #v(1fr)
    #if gambar != none {
      gambar
    }
    #v(1fr)
    #pad(bottom: 8pt)[
      ( #if nama == "" {
        box(width: 5.5cm)[#repeat[.]]
      } else {
        box(width: 5.5cm, align(center)[#nama])
      } )
    ]
  ]
}

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.5cm,
  row-gutter: 0.5cm,
  ttd-box([Guru Pembimbing Matematika], nama: [Guru Pembimbing, S.Pd.]),
  ttd-box([Koordinator Program Keahlian PPLG], nama: [Reza Auditore, S.Kom.]),
  ttd-box([Guru Penguji PSAJ], nama: [Tim Penguji PSAJ]),
  ttd-box([Kepala SMK Telkom Purwokerto], nama: [Dr. H. Kepala Sekolah, M.Pd.]),
)

#pagebreak()

// ─── iii: KATA PENGANTAR ─────────────────────────────────────
= KATA PENGANTAR

#isian(teks: [#h(1.27cm)Puji syukur ke hadirat Tuhan Yang Maha Esa atas segala limpahan rahmat, taufik, dan hidayah-Nya, sehingga penulis dapat menyelesaikan laporan proyek Penilaian Sumatif Akhir Jenjang (PSAJ) Matematika ini tepat pada waktunya. Laporan ini berjudul *"Analisis Statistika Deskriptif dan Pemodelan Regresi Linear: Pengaruh Persentase Penduduk Berpendidikan SMA ke Atas terhadap Tingkat Pengangguran Terbuka di Indonesia"*.])

#isian(teks: [#h(1.27cm)Penelitian proyek ini bertujuan untuk menerapkan konsep statistika deskriptif data berkelompok (penyusunan tabel distribusi frekuensi, mean, median, modus, histogram, poligon frekuensi, serta kurva ogif) yang dipadukan dengan teknik analisis data inferensial komputasi berbasis _Ordinary Least Squares_ (OLS), validasi runtun waktu (_backtesting_), serta proyeksi peramalan (_forecasting_) tahun 2026 menggunakan data sekunder resmi Badan Pusat Statistik (BPS).])

#isian(teks: [#h(1.27cm)Penyusunan laporan ini tidak lepas dari bimbingan, dukungan, dan bantuan berbagai pihak. Penulis menyampaikan terima kasih yang sebesar-besarnya kepada Bapak Kepala SMK Telkom Purwokerto, Bapak/Ibu Guru Pembimbing Matematika, Bapak Koordinator Program Keahlian PPLG, serta rekan-rekan anggota kelompok yang telah bekerja sama secara optimal.])

#isian(teks: [#h(1.27cm)Penulis menyadari bahwa laporan ini masih memiliki keterbatasan. Kritik dan saran yang membangun sangat diharapkan guna penyempurnaan di masa mendatang. Semoga laporan ini dapat memberikan manfaat bagi dunia pendidikan serta analisis ketenagakerjaan di Indonesia.])

#v(1em)
#align(right)[
  Purwokerto, 29 Agustus 2026 \
  #v(2.5em)
  *Tim Penyusun*
]

#pagebreak()

// ─── iv: DAFTAR ISI ──────────────────────────────────────────
= DAFTAR ISI

#block[
  #set text(size: 10.5pt)
  #show outline.entry: it => {
    set par(leading: 0.45em)
    if it.level == 1 {
      v(0.2em)
      strong(it)
    } else {
      it
    }
  }

  #outline(
    title: none,
    indent: 1.2em,
    depth: 2,
  )
]

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

#subbab("A", "Latar Belakang Masalah")

#isian(teks: [#h(1.27cm)Pendidikan dan ketenagakerjaan merupakan dua pilar fundamental dalam pembangunan sosial-ekonomi suatu bangsa. Kualitas sumber daya manusia (SDM) yang tercermin dari jenjang pendidikan formal kerap dipandang sebagai determinan utama dalam menentukan produktivitas tenaga kerja serta daya saing di pasar kerja. Dalam perspektif teori modal manusia (_Human Capital Theory_), akumulasi pengetahuan, keterampilan, dan kompetensi yang diperoleh melalui pendidikan formal tingkat menengah atas (SMA/sederajat) hingga pendidikan tinggi diasumsikan mampu meningkatkan peluang individu dalam memperoleh pekerjaan layak, sehingga secara makro dapat menekan Tingkat Pengangguran Terbuka (TPT).])

#isian(teks: [#h(1.27cm)Namun, realitas empiris dinamika ketenagakerjaan di Indonesia menyajikan fenomena yang lebih kompleks. Wilayah-wilayah dengan proporsi lulusan SMA ke atas yang tinggi, terutama provinsi-provinsi pusat pertumbuhan ekonomi dan perkotaan, kerap mencatat angka pengangguran terbuka yang relatif tinggi akibat tingginya ekspektasi upah, selektivitas pekerjaan (_job queueing_), serta arus urbanisasi tenaga kerja dari berbagai daerah. Fenomena ini memerlukan pengujian empiris kuantitatif yang objektif dan terukur.])

#isian(teks: [#h(1.27cm)Untuk mengkaji fenomena tersebut secara komprehensif, diperlukan integrasi antara kaidah statistika matematika formal tingkat sekolah menengah atas—seperti penyusunan tabel distribusi frekuensi data berkelompok, penentuan ukuran pemusatan data (mean, median, dan modus), serta penyajian visual kurva distribusi—dengan metode komputasi analitik modern berbasis bahasa pemrograman Python. Lebih jauh, evaluasi kelayakan model dilakukan melalui uji korelasi Pearson sebagai justifikasi linearitas metode, diikuti pembentukan model regresi linear (_Ordinary Least Squares_), validasi performa historis (_backtesting walk-forward_ 2018–2025), dan peramalan (_forecasting_) angka pengangguran terbuka tahun 2026.])

#subbab("B", "Rumusan Masalah")

#isian(teks: [Berdasarkan latar belakang yang telah diuraikan, rumusan masalah dalam penelitian ini dirumuskan sebagai berikut:])

#nomor(
  [Bagaimana karakteristik distribusi frekuensi dan ukuran pemusatan data (mean, median, dan modus) persentase penduduk berpendidikan SMA ke atas pada 38 provinsi di Indonesia tahun 2025?],
  [Bagaimana penyajian data visual distribusi pendidikan tersebut dalam bentuk histogram, poligon frekuensi, serta kurva ogif positif dan ogif negatif?],
  [Apakah terdapat korelasi linear yang signifikan antara persentase penduduk berpendidikan SMA ke atas dengan Tingkat Pengangguran Terbuka (TPT) sebagai justifikasi kelayakan metode regresi linear?],
  [Bagaimana bentuk persamaan model regresi linear yang terbentuk serta interpretasi koefisiennya terhadap elastisitas pengangguran?],
  [Bagaimana keandalan performa model berdasarkan evaluasi runtun waktu (_backtesting_ 2018–2025) dan proyeksi peramalan (_forecasting_) TPT nasional untuk tahun 2026?],
)

#subbab("C", "Tujuan Penelitian")

#isian(teks: [Tujuan yang hendak dicapai dalam penelitian proyek ini adalah:])

#nomor(
  [Menghitung jangkauan, jumlah kelas, panjang kelas, tabel distribusi frekuensi berkelompok, serta ukuran pemusatan data (mean, median, dan modus) persentase lulusan SMA ke atas tahun 2025.],
  [Menyajikan visualisasi data statistik yang memenuhi rubrik PSAJ melalui histogram, poligon frekuensi, ogif positif, dan ogif negatif berkualitas tinggi.],
  [Menganalisis koefisien korelasi Pearson ($r$) sebagai justifikasi matematis pemilihan metode pemodelan regresi linear.],
  [Membentuk persamaan regresi linear sederhana ($hat(Y) = a + b X$), mengukur koefisien determinasi ($R^2$), serta menginterpretasikan dampaknya.],
  [Menguji performa prediktif model melalui validasi _backtesting_ multi-tahun (2018–2025) dengan metrik _Mean Absolute Error_ (MAE) dan menghasilkan estimasi proyeksi TPT tahun 2026.],
)

#subbab("D", "Manfaat Penelitian")

#isian(teks: [Penelitian proyek ini diharapkan dapat memberikan manfaat sebagai berikut:])

#nomor(
  [*Bagi Siswa dan Akademik:* Mengembangkan kemampuan analitik terpadu dalam mengimplementasikan teori statistika dasar ke dalam studi kasus nyata dengan bantuan komputasi data ilmiah (_data science_).],
  [*Bagi Institusi Sekolah:* Menjadi portofolio proyek PSAJ yang komprehensif, mengintegrasikan capaian kurikulum Matematika dengan kompetensi keahlian Rekayasa Perangkat Lunak.],
  [*Bagi Masyarakat dan Pengambil Kebijakan:* Menyediakan wawasan deskriptif dan prediktif mengenai korelasi capaian pendidikan daerah terhadap dinamika pasar kerja nasional.],
)

#subbab("E", "Batasan Masalah")

#isian(teks: [Agar pembahasan tetap terarah dan fokus pada rubrik penilaian, batasan masalah penelitian ini ditetapkan:])

#nomor(
  [Data yang digunakan merupakan data sekunder resmi dari Badan Pusat Statistik (BPS) Republik Indonesia rentang tahun 2018 hingga 2025.],
  [Variabel independen ($X$) adalah persentase penduduk usia 25 tahun ke atas berpendidikan SMA ke atas per provinsi.],
  [Variabel dependen ($Y$) adalah Tingkat Pengangguran Terbuka (TPT) menurut provinsi pada periode pencatatan bulan Agustus.],
  [Analisis deskriptif berkelompok dan cross-section difokuskan pada 38 provinsi di Indonesia pada tahun 2025.],
)

// ============================================================
//  BAB II — KAJIAN PUSTAKA
// ============================================================
#mulai-bab("II", 2, "KAJIAN PUSTAKA")

#subbab("A", "Tinjauan Objek Penelitian")

#isian(teks: [*1. Tingkat Pengangguran Terbuka (TPT)*])
#isian(teks: [#h(1.27cm)Berdasarkan definisi Badan Pusat Statistik (BPS), Tingkat Pengangguran Terbuka (TPT) adalah persentase jumlah pengangguran terhadap total angkatan kerja. Pengangguran terbuka mencakup penduduk yang tidak bekerja dan sedang mencari pekerjaan, mempersiapkan usaha baru, merasa tidak mungkin mendapat pekerjaan, atau sudah diterima bekerja tetapi belum mulai bekerja. Data periode bulan Agustus digunakan sebagai rilis utama tahunan yang representatif dari Survei Angkatan Kerja Nasional (Sakernas).])

#isian(teks: [*2. Persentase Penduduk Berpendidikan SMA ke Atas*])
#isian(teks: [#h(1.27cm)Variabel ini mengukur proporsi penduduk berusia 25 tahun ke atas yang telah menyelesaikan pendidikan formal minimal tingkat Sekolah Menengah Atas (SMA), Sekolah Menengah Kejuruan (SMK), Madrasah Aliyah (MA), atau Perguruan Tinggi (Diploma/Sarjana) terhadap total populasi usia 25 tahun ke atas di wilayah tersebut, bersumber dari Survei Sosial Ekonomi Nasional (Susenas).])

#subbab("B", "Konsep Statistika Deskriptif Berkelompok")

#isian(teks: [#h(1.27cm)Pengolahan data dalam jumlah besar ($n = 38$) memerlukan pengelompokan data ke dalam interval kelas yang sistematis. Kaidah-kaidah matematis yang digunakan meliputi:])

#isian(teks: [*1. Aturan Sturges (Banyak Kelas)*])
#isian(teks: [#h(1.27cm)Banyak kelas interval ($k$) ditentukan berdasarkan rumus empiris Sturges:])
$ k = 1 + 3.3 log_(10)(n) $
#isian(teks: [di mana $n$ adalah ukuran sampel atau total baris data observasi.])

#isian(teks: [*2. Jangkauan dan Panjang Kelas*])
#isian(teks: [#h(1.27cm)Jangkauan (_Range_, $R$) dan panjang kelas ($p$) dihitung melalui:])
$ R = X_max - X_min $
$ p = ceil(R / k) $

#isian(teks: [*3. Rata-rata (Mean) Data Berkelompok*])
#isian(teks: [#h(1.27cm)Nilai rata-rata hitung data berkelompok ($overline(x)$) ditentukan dengan memanfaatkan titik tengah kelas ($x_i$) dan frekuensi kelas ($f_i$):])
$ overline(x) = (sum_(i=1)^k f_i x_i) / (sum_(i=1)^k f_i) $

#isian(teks: [*4. Median Data Berkelompok*])
#isian(teks: [#h(1.27cm)Median ($"Me"$) merupakan nilai tengah yang membagi data terurut menjadi dua bagian sama besar:])
$ "Me" = T_b + (((n)/2 - F_k) / f_"Me") p $
#isian(teks: [di mana $T_b$ adalah tepi bawah kelas median, $F_k$ adalah frekuensi kumulatif sebelum kelas median, dan $f_"Me"$ adalah frekuensi kelas median.])

#isian(teks: [*5. Modus Data Berkelompok*])
#isian(teks: [#h(1.27cm)Modus ($"Mo"$) adalah nilai yang paling sering muncul dalam distribusi data:])
$ "Mo" = T_b + (d_1 / (d_1 + d_2)) p $
#isian(teks: [di mana $d_1 = f_"Mo" - f_("Mo"-1)$ dan $d_2 = f_"Mo" - f_("Mo"+1)$.])

#subbab("C", "Konsep Visualisasi Data Statistik")

#isian(teks: [#h(1.27cm)Penyajian visual data bertujuan untuk mempermudah identifikasi karakteristik sebaran data:])

#nomor(
  [*Histogram:* Diagram batang rapat di mana lebar batang menunjukkan interval kelas dan tinggi batang mencerminkan frekuensi kelas ($f_i$).],
  [*Poligon Frekuensi:* Garis linier yang menghubungkan titik-titik koordinat antara titik tengah kelas ($x_i$) dan frekuensi ($f_i$).],
  [*Kurva Ogif Positif:* Grafik garis yang menyajikan frekuensi kumulatif kurang dari berdasarkan batas tepi atas kelas.],
  [*Kurva Ogif Negatif:* Grafik garis yang menyajikan frekuensi kumulatif lebih dari berdasarkan batas tepi bawah kelas.],
)

#subbab("D", "Korelasi Pearson sebagai Prasyarat Regresi Linear")

#isian(teks: [#h(1.27cm)Sebelum membentuk persamaan garis regresi, uji korelasi Pearson ($r$) dilakukan untuk menguji kekuatan dan arah hubungan linear antara variabel $X$ dan $Y$:])
$ r = (n sum X Y - (sum X)(sum Y)) / (sqrt([n sum X^2 - (sum X)^2][n sum Y^2 - (sum Y)^2])) $

#isian(teks: [Kriteria kekuatan korelasi dievaluasi berdasarkan nilai mutlak koefisien korelasi $|r|$:])
#nomor(
  [$0.80 <= |r| <= 1.00$: Korelasi sangat kuat.],
  [$0.60 <= |r| < 0.80$: Korelasi kuat (memenuhi syarat kelayakan regresi linear).],
  [$0.40 <= |r| < 0.60$: Korelasi sedang/moderat.],
  [$|r| < 0.40$: Korelasi lemah.],
)

#subbab("E", "Pemodelan Regresi Linear (Metode OLS)")

#isian(teks: [#h(1.27cm)Model regresi linear sederhana dirumuskan dalam persamaan garis lurus:])
$ hat(Y) = a + b X $

#isian(teks: [Koefisien kemiringan (_slope_, $b$) dan konstanta intersep ($a$) ditentukan menggunakan metode kuadrat terkecil (_Ordinary Least Squares_ / OLS):])
$ b = (n sum X Y - (sum X)(sum Y)) / (n sum X^2 - (sum X)^2) $
$ a = (sum Y - b sum X) / n = overline(Y) - b overline(X) $

#isian(teks: [Tingkat kebaikan suai (_goodness of fit_) diukur melalui koefisien determinasi:])
$ R^2 = r^2 $

#subbab("F", "Evaluasi Model dan Validasi Runtun Waktu (Backtesting)")

#isian(teks: [#h(1.27cm)Untuk data runtun waktu (_time series_), validasi model dilakukan melalui skema _Walk-Forward Validation (Expanding Window)_. Model dilatih pada data masa lalu $t in [2018, T-1]$ untuk memprediksi data aktual periode $T$. Akurasi diukur dengan _Mean Absolute Error_ (MAE):])
$ "MAE" = 1 / m sum_(t=1)^m |Y_(t, "aktual") - Y_(t, "prediksi")| $

// ============================================================
//  BAB III — METODE PENELITIAN
// ============================================================
#mulai-bab("III", 3, "METODE PENELITIAN")

#subbab("A", "Waktu dan Tempat Penelitian")

#isian(teks: [#h(1.27cm)Penelitian proyek ini dilaksanakan pada bulan Agustus 2026. Seluruh tahapan pembersihan data, komputasi statistik, visualisasi grafik, pemodelan _machine learning_, dan penyusunan laporan dilakukan di Laboratorium Komputasi SMK Telkom Purwokerto secara kolaboratif menggunakan lingkungan pemrograman Python pada Conda environment `ml_base`.])

#subbab("B", "Sumber dan Sifat Data")

#isian(teks: [#h(1.27cm)Data yang digunakan merupakan data sekunder kuantitatif bertipe rasio (persentase) berskala nasional yang diperoleh dari portal resmi Badan Pusat Statistik (BPS) Republik Indonesia:])

#nomor(
  [*Dataset X:* Persentase Penduduk Usia 25 Tahun ke Atas dengan Pendidikan SMA ke Atas Menurut Jenis Kelamin (2018–2025).],
  [*Dataset Y:* Tingkat Pengangguran Terbuka Menurut Provinsi periode Agustus (2018–2025).],
)

#subbab("C", "Teknik Pengumpulan Data")

#isian(teks: [#h(1.27cm)Pengumpulan data dilakukan melalui studi dokumentasi digital dan penarikan langsung (_data retrieval_) terhadap publikasi tabel statistik resmi BPS dalam format CSV. Data yang diperoleh kemudian diverifikasi kelengkapan barisnya untuk 34 provinsi (rentang 2018–2023) dan 38 provinsi (rentang 2024–2025 pascapemekaran wilayah Papua).])

#subbab("D", "Teknik Analisis Data")

#isian(teks: [#h(1.27cm)Analisis data dilakukan melalui 4 tahapan sistematis:])

#nomor(
  [*Tahap 1 (Pembersihan & Penyelarasan Data):* Melakukan normalisasi nama provinsi, agregasi rata-rata gender untuk variabel pendidikan, dan penggabungan (_merging_) dataset $X$ dan $Y$.],
  [*Tahap 2 (Statistika Deskriptif Berkelompok):* Menerapkan Aturan Sturges, menyusun tabel frekuensi, dan menghitung mean, median, serta modus sesuai kaidah matematika sekolah.],
  [*Tahap 3 (Uji Korelasi & Justifikasi Linearitas):* Menghitung nilai Pearson $r$ untuk membuktikan kelayakan penggunaan model regresi linear.],
  [*Tahap 4 (Pemodelan OLS & Backtesting Time-Series):* Menghitung parameter $a$ dan $b$ secara analitis, melakukan validasi runtun waktu (2022–2025), serta memproyeksikan estimasi TPT tahun 2026.],
)

#v(0.5em)

#tbl("Perangkat Lunak dan Pustaka Komputasi yang Digunakan",
  table(
    columns: (5.4cm, 1fr),
    stroke: 0.6pt,
    inset: 7pt,
    align: (left, left),
    table.header(
      strong[Teknologi / Library], strong[Fungsi Utama dalam Penelitian]
    ),
    [Python 3.9 (Conda `ml_base`)], [Bahasa pemrograman utama untuk eksekusi pipeline analitik.],
    [Pandas & NumPy], [Struktur data tabel, pembersihan, dan kalkulasi manual OLS.],
    [Matplotlib & Seaborn], [Pembangkitan grafik resolusi tinggi (300 DPI) untuk laporan & X-Banner.],
    [SciPy & Scikit-Learn], [Verifikasi hasil perhitungan korelasi Pearson dan regresi OLS.],
    [Jupyter Notebook], [Lingkungan eksperimen interaktif modular (01 s.d. 04).],
  )
)

// ============================================================
//  BAB IV — HASIL PENELITIAN DAN PEMBAHASAN
// ============================================================
#mulai-bab("IV", 4, "HASIL PENELITIAN DAN PEMBAHASAN")

#subbab("A", "Pengolahan Data Awal")

#isian(teks: [#h(1.27cm)Pengolahan data awal dilakukan terhadap 38 provinsi di Indonesia pada tahun 2025. Dari hasil ekstraksi variabel persentase penduduk berpendidikan SMA ke atas ($X$), diperoleh karakteristik numerik dasar:])

#nomor(
  [Nilai Minimum ($X_min$): *16.66%* (Provinsi Papua Pegunungan)],
  [Nilai Maksimum ($X_max$): *68.30%* (Provinsi DKI Jakarta)],
  [Jangkauan / Range ($R$): $R = 68.295 - 16.660 = 51.635$ persentase poin],
)

#isian(teks: [#h(1.27cm)Berdasarkan Aturan Sturges dengan ukuran sampel $n = 38$ :])
$ k = 1 + 3.3 log_(10)(38) = 1 + 3.3(1.5798) = 6.2133 approx 7 text(" kelas") $
$ p = ceil(R / k) = ceil(51.635 / 7) = ceil(7.3764) = 8 $

#isian(teks: [#h(1.27cm)Dengan menetapkan batas bawah kelas pertama pada nilai 16.0, diperoleh 7 interval kelas dengan lebar masing-masing 8 satuan persentase.])

#subbab("B", "Tabel Distribusi Frekuensi & Ukuran Pemusatan Data")

#isian(teks: [#h(1.27cm)Berdasarkan parameter Aturan Sturges di atas, disusun tabel distribusi frekuensi berkelompok yang memuat tepi kelas, titik tengah, frekuensi, serta frekuensi kumulatif.])

#align(center)[
#block[
  #set text(size: 9.5pt)
  #tbl("Distribusi Frekuensi Persentase Penduduk Pendidikan SMA+ Tahun 2025",
    table(
      columns: (2.4cm, 1.6cm, 1.6cm, 1.8cm, 1.8cm, 1.8cm, 1.5cm, 1.5cm),
      stroke: 0.5pt,
      inset: (x: 2pt, y: 5pt),
      align: (center, center, center, center, center, center, center, center),
      table.header(
        [ *Interval\ Kelas* ],
        [ *Tepi Bawah\ ($T_b$)* ],
        [ *Tepi Atas\ ($T_a$)* ],
        [ *Titik Tengah\ ($x_i$)* ],
        [ *Frekuensi\ ($f_i$)* ],
        [ *$f_i times x_i$* ],
        [ *$f_k <$* ],
        [ *$f_k >$* ],
      ),
      [16.0 – 24.0], [15.5], [23.5], [19.5], [1], [19.50], [1], [38],
      [24.0 – 32.0], [23.5], [31.5], [27.5], [2], [55.00], [3], [37],
      [32.0 – 40.0], [31.5], [39.5], [35.5], [12], [426.00], [15], [35],
      [40.0 – 48.0], [39.5], [47.5], [43.5], [10], [435.00], [25], [23],
      [48.0 – 56.0], [47.5], [55.5], [51.5], [9], [463.50], [34], [13],
      [56.0 – 64.0], [55.5], [63.5], [59.5], [3], [178.50], [37], [4],
      [64.0 – 72.0], [63.5], [71.5], [67.5], [1], [67.50], [38], [1],
      table.hline(stroke: 1pt),
      [*TOTAL*], [-], [-], [-], [*38*], [*1645.00*], [-], [-],
    )
  )
]
]

#isian(teks: [Dari data tabel distribusi di atas, ukuran pemusatan data dihitung secara analitis bertahap:])

#isian(teks: [*1. Perhitungan Mean Berkelompok ($overline(x)$):*])
$ overline(x) = (sum f_i x_i) / (sum f_i) = 1645.00 / 38 = 43.2895 % approx bold(43.29 %) $

#isian(teks: [*2. Perhitungan Median Berkelompok ($"Me"$):* \
Letak median berada pada data ke-$n/2 = 38/2 = 19$, yang termuat dalam Kelas Interval ke-4 ($40.0 - 48.0$).
- Tepi bawah kelas median ($T_b$) = $39.5$
- Frekuensi kumulatif sebelum kelas median ($F_k$) = $15$
- Frekuensi kelas median ($f_"Me"$) = $10$
- Panjang kelas ($p$) = $8$])
$ "Me" = T_b + (((n)/2 - F_k) / f_"Me") p = 39.5 + ((19 - 15) / 10) times 8 = 39.5 + (4 / 10) times 8 = 39.5 + 3.2 = bold(42.70 %) $

#isian(teks: [*3. Perhitungan Modus Berkelompok ($"Mo"$):* \
Frekuensi terbesar adalah $f_i = 12$ pada Kelas Interval ke-3 ($32.0 - 40.0$).
- Tepi bawah kelas modus ($T_b$) = $31.5$
- $d_1 = f_"Mo" - f_("Mo"-1) = 12 - 2 = 10$
- $d_2 = f_"Mo" - f_("Mo"+1) = 12 - 10 = 2$
- Panjang kelas ($p$) = $8$])
$ "Mo" = T_b + (d_1 / (d_1 + d_2)) p = 31.5 + (10 / (10 + 2)) times 8 = 31.5 + (10 / 12) times 8 = 31.5 + 6.67 = bold(38.17 %) $

#subbab("C", "Penyajian Visual Data")

#isian(teks: [#h(1.27cm)Berdasarkan tabel distribusi frekuensi data berkelompok, disajikan visualisasi grafik resmi untuk memenuhi rubrik penilaian statistika:])

#gbr("Histogram Distribusi Persentase Lulusan SMA+ 38 Provinsi Tahun 2025", image("experiments/outputs/figures/01_histogram.png", width: 85%))

#gbr("Poligon Frekuensi Distribusi Lulusan SMA+ Tahun 2025", image("experiments/outputs/figures/02_poligon_frekuensi.png", width: 85%))

#gbr("Kurva Ogif Positif (Frekuensi Kumulatif Kurang Dari)", image("experiments/outputs/figures/03_ogif_positif.png", width: 85%))

#gbr("Kurva Ogif Negatif (Frekuensi Kumulatif Lebih Dari)", image("experiments/outputs/figures/04_ogif_negatif.png", width: 85%))

#gbr("Perbandingan Kurva Ogif Positif dan Ogif Negatif (Overlay)", image("experiments/outputs/figures/05_ogif_overlay.png", width: 85%))

#isian(teks: [#h(1.27cm)Dari kurva histogram dan poligon frekuensi terlihat bahwa distribusi persentase penduduk berpendidikan SMA ke atas di Indonesia terkonsentrasi pada rentang 32% hingga 56%, dengan modus berada di kelas 32.0–40.0%. Perpotongan kurva ogif positif dan negatif pada Gambar 4.5 tepat berada di sekitar persentase median 42.70%.])

#subbab("D", "Uji Korelasi Antar Variabel (Justifikasi Pemilihan Metode)")

#isian(teks: [#h(1.27cm)Untuk membuktikan adanya hubungan linear yang mendasari pembentukan model regresi, dilakukan pengujian korelasi Pearson antara Persentase Pendidikan SMA+ ($X$) dan TPT ($Y$) pada 38 provinsi tahun 2025.])

#tbl("Ringkasan Komponen Perhitungan Korelasi Pearson (38 Provinsi, 2025)",
  table(
    columns: (1fr, 1.2fr, 1.2fr, 1.5fr, 1.2fr, 1.5fr),
    stroke: 0.6pt,
    inset: 7pt,
    align: (center, center, center, center, center, center),
    table.header(
      strong[Keterangan], strong[$sum X$], strong[$sum Y$], strong[$sum X^2$], strong[$sum Y^2$], strong[$sum X Y$]
    ),
    [Total Nilai ($n=38$)], [1686.0750], [169.7900], [78877.0189], [839.2943], [7837.9173]
  )
)

#isian(teks: [Kalkulasi analitis koefisien korelasi Pearson:])
$ text("Pembilang") = n sum X Y - (sum X)(sum Y) = 38(7837.9173) - (1686.0750)(169.7900) = 11562.1832 $
$ text("Penyebut") = sqrt([38(78877.0189) - (1686.0750)^2][38(839.2943) - (169.7900)^2]) = sqrt([154477.8126][3064.5393]) = 21757.4771 $
$ r = 11562.1832 / 21757.4771 = bold(0.6284) $
$ R^2 = (0.6284)^2 = bold(0.3949) quad (39.49 %) $

#gbr("Scatter Plot Korelasi Variabel Pendidikan SMA+ vs TPT 2025", image("experiments/outputs/figures/07_scatter_korelasi.png", width: 85%))

#isian(teks: [#h(1.27cm)*Pembahasan Korelasi:* \
Nilai koefisien korelasi $r = 0.6284$ menunjukkan hubungan linear yang *positif dan kuat* ($r >= 0.60$). Arah korelasi positif ini merefleksikan dinamika sosial-ekonomi di mana provinsi dengan proporsi lulusan SMA/PT tinggi (seperti DKI Jakarta, Kepulauan Riau, dan Banten) juga mengalami tingkat pengangguran terbuka yang tinggi. Hal ini terjadi karena kawasan perkotaan yang maju menjadi magnet urbanisasi pencari kerja, serta lulusan pendidikan menengah atas cenderung lebih selektif dalam memilih jenis pekerjaan formal (_frictional unemployment_). Hasil ini memberikan *justifikasi ilmiah yang kokoh* bahwa hubungan kedua variabel layak dimodelkan menggunakan Regresi Linear.])

#subbab("E", "Pemodelan Regresi Linear dan Interpretasi Hasil")

#isian(teks: [#h(1.27cm)Parameter model regresi linear $hat(Y) = a + b X$ dihitung menggunakan metode kuadrat terkecil (_Ordinary Least Squares_):])

#isian(teks: [*1. Koefisien Kemiringan (Slope / $b$):*])
$ b = (n sum X Y - sum X sum Y) / (n sum X^2 - (sum X)^2) = 11562.1832 / 154477.8126 = bold(0.0836) $

#isian(teks: [*2. Konstanta Intersep ($a$):*])
$ a = (sum Y - b sum X) / n = (169.7900 - 0.083570 times 1686.0750) / 38 = (169.7900 - 140.9053) / 38 = bold(0.8197) $

#isian(teks: [Dengan demikian, diperoleh persamaan model regresi linear:])
$ bold(hat(Y) = 0.8197 + 0.0836 X) $

#gbr("Garis Regresi Linear (Best Fit Line) Hubungan SMA+ terhadap TPT", image("experiments/outputs/figures/08_scatter_regresi_bestfit.png", width: 85%))

#isian(teks: [*Interpretasi Model:*])
#nomor(
  [*Konstanta ($a = 0.8197$):* Menunjukkan bahwa jika suatu wilayah memiliki persentase lulusan SMA sebesar 0%, maka estimasi dasar TPT berada pada angka 0.82%.],
  [*Koefisien Regresi ($b = 0.0836$):* Menunjukkan bahwa setiap kenaikan 1% penduduk berpendidikan SMA ke atas, Tingkat Pengangguran Terbuka di wilayah tersebut diproyeksikan meningkat sebesar *0.0836%*.],
  [*Koefisien Determinasi ($R^2 = 0.3949$):* Model regresi ini mampu menjelaskan *39.49%* variasi Tingkat Pengangguran Terbuka antardprovinsi di Indonesia, sedangkan 60.51% sisanya dipengaruhi oleh faktor lain seperti upah minimum regional (UMR), struktur industri lokal, dan investasi daerah.],
  [*Rata-rata Kesalahan Model (MAE Cross-Section):* Rata-rata deviasi absolut model terhadap 38 provinsi tahun 2025 adalah *0.7706%*.],
)

#subbab("F", "Validasi Model: Backtesting Walk-Forward (2018–2025)")

#isian(teks: [#h(1.27cm)Untuk membuktikan keandalan model sebelum melakukan peramalan masa depan, dilakukan pengujian _backtesting_ menggunakan skema _expanding window_ dari data historis nasional 2018–2025.])

#tbl("Hasil Evaluasi Backtesting Walk-Forward Model Runtun Waktu",
  table(
    columns: (2.5fr, 1.2fr, 1.2fr, 1.2fr, 1.2fr),
    stroke: 0.6pt,
    inset: 7pt,
    align: (left, center, center, center, center),
    table.header(
      strong[Skenario Pelatihan Model], strong[Tahun Uji], strong[TPT Aktual], strong[TPT Prediksi], strong[Error Absolut ($|e|$)]
    ),
    [Pelatihan 2018–2021], [2022], [4.9662%], [5.7876%], [0.8214%],
    [Pelatihan 2018–2022], [2023], [4.6138%], [5.6937%], [1.0799%],
    [Pelatihan 2018–2023], [2024], [4.3797%], [5.0494%], [0.6697%],
    [Pelatihan 2018–2024], [2025], [4.4682%], [4.6374%], [0.1693%],
    table.hline(stroke: 1pt),
    [*Rata-rata MAE Backtesting*], [-], [-], [-], [*0.6851%*],
  )
)

#gbr("Grafik Evaluasi Backtesting: Perbandingan Aktual BPS vs Prediksi Model", image("experiments/outputs/figures/09_backtesting.png", width: 85%))

#isian(teks: [*Analisis Kritis Hasil Evaluasi:*])
#nomor(
  [Rata-rata kesalahan model (_MAE_) adalah *0.6851%*. Kesalahan prediksi mengalami tren penurunan yang sangat positif, yaitu dari *1.0799%* (pada tahun 2023 pascapandemi) menjadi hanya *0.1693%* (pada tahun 2025, dengan persentase error relatif hanya 3.8% dari nilai aktual).],
  [Hal ini menunjukkan bahwa seiring bertambahnya volume data latih historis pascaguncangan pandemi COVID-19 tahun 2020, model regresi linear menjadi semakin adaptif, stabil, dan presisi dalam membaca tren ketenagakerjaan.],
  [*Catatan Metrik $R^2$ pada Backtesting:* Pada evaluasi runtun waktu 4 titik uji, metrik $R^2$ bernilai negatif ($-10.59$) karena sampel uji yang sangat terbatas ($m = 4$) dan rentang fluktuasi aktual yang sangat sempit ($R = 1.65%$). Oleh karena itu, metrik MAE digunakan sebagai tolok ukur keandalan performa yang paling objektif dan valid.],
)

#subbab("G", "Peramalan (Forecasting) TPT Tahun 2026")

#isian(teks: [#h(1.27cm)Tahap akhir penelitian adalah memproyeksikan angka Tingkat Pengangguran Terbuka rata-rata nasional untuk tahun 2026. Model final dilatih pada seluruh data historis 2018–2025, kemudian disubstitusikan nilai rata-rata persentase SMA+ nasional tahun 2025 ($X_(2025) = 43.77 %$).])

#gbr("Tren Historis TPT Nasional (2018–2025) dan Estimasi Peramalan Tahun 2026", image("experiments/outputs/figures/10_forecasting_2026.png", width: 85%))

#isian(teks: [Berdasarkan hasil pemodelan regresi:])
$ bold(hat(Y)_(2026) = 4.43 %) $

#isian(teks: [#h(1.27cm)Diproyeksikan bahwa Tingkat Pengangguran Terbuka rata-rata nasional pada tahun 2026 akan berada pada kisaran *4.43%*, yang mengindikasikan kelanjutan tren stabilisasi pasar tenaga kerja nasional pascapemulihan ekonomi.])

// ============================================================
//  BAB V — PENUTUP
// ============================================================
#mulai-bab("V", 5, "PENUTUP")

#subbab("A", "Kesimpulan")

#isian(teks: [Berdasarkan seluruh rangkaian analisis statistika deskriptif berkelompok dan pemodelan regresi linear yang telah dilakukan, dapat ditarik kesimpulan sebagai berikut:])

#nomor(
  [*Karakteristik Data 2025:* Distribusi persentase penduduk berpendidikan SMA ke atas pada 38 provinsi di Indonesia terbagi ke dalam 7 kelas interval dengan panjang kelas 8. Diperoleh nilai rata-rata (_Mean_, $overline(x)$) sebesar *43.29%*, nilai tengah (_Median_, $"Me"$) sebesar *42.70%*, dan nilai yang paling sering muncul (_Modus_, $"Mo"$) sebesar *38.17%*.],
  [*Penyajian Visual:* Visualisasi dalam bentuk histogram, poligon frekuensi, dan kurva ogif (positif dan negatif) berhasil menyajikan sebaran data secara presisi, di mana kurva ogif berpotongan tepat di sekitar nilai median 42.70%.],
  [*Justifikasi Korelasi:* Uji korelasi Pearson menghasilkan nilai $r = 0.6284$ yang menunjukkan hubungan linear positif dan kuat, membuktikan kelayakan data untuk dimodelkan dengan regresi linear.],
  [*Model Regresi Linear:* Model OLS menghasilkan persamaan $hat(Y) = 0.8197 + 0.0836 X$ dengan koefisien determinasi $R^2 = 0.3949$ dan rata-rata kesalahan cross-section $"MAE" = 0.7706%$.],
  [*Validasi & Peramalan:* Pengujian _backtesting_ menghasilkan rata-rata kesalahan $"MAE" = 0.6851%$ dengan akurasi yang semakin meningkat pada tahun 2025 (error 0.17%). Proyeksi peramalan menghasilkan estimasi TPT nasional tahun 2026 sebesar *4.43%*.],
)

#subbab("B", "Saran")

#isian(teks: [Berdasarkan temuan penelitian dan analisis kritis keterbatasan model, diajukan beberapa saran:])

#nomor(
  [*Peningkatan Granularitas Data:* Penelitian selanjutnya disarankan menggunakan data tingkat kuartalan atau bulanan BPS untuk menambah jumlah titik data observasi, sehingga estimasi peramalan runtun waktu menjadi lebih peka terhadap dinamika musiman.],
  [*Penanganan Outlier Ekstrem:* Disarankan menguji metode _Robust Regression_ atau memberikan perlakuan khusus (_dummy variable_) pada periode anomali pandemi COVID-19 (2020–2021) agar garis regresi tidak terdistorsi.],
  [*Pengembangan Regresi Berganda:* Memperluas pemodelan dengan menambahkan variabel makroekonomi pendukung, seperti pertumbuhan Produk Domestik Regional Bruto (PDRB), Upah Minimum Regional (UMR), dan tingkat investasi daerah.],
)

// ============================================================
//  DAFTAR PUSTAKA
// ============================================================
#pagebreak(weak: true)
#heading(level: 1, numbering: none)[DAFTAR PUSTAKA]

#pustaka([Badan Pusat Statistik. (2025). _Persentase Penduduk Usia 25 Tahun ke Atas Menurut Provinsi dan Pendidikan Tertinggi yang Ditamatkan 2018–2025_. Jakarta: BPS RI. https://www.bps.go.id])

#pustaka([Badan Pusat Statistik. (2025). _Tingkat Pengangguran Terbuka (TPT) Menurut Provinsi 2018–2025_. Jakarta: BPS RI. https://www.bps.go.id])

#pustaka([Becker, G. S. (1993). _Human Capital: A Theoretical and Empirical Analysis with Special Reference to Education_ (3rd ed.). The University of Chicago Press.])

#pustaka([Harris, C. R., Millman, K. J., van der Walt, S. J., et al. (2020). Array programming with NumPy. _Nature_, 585(7825), 357–362.])

#pustaka([McKinney, W. (2010). Data structures for statistical computing in Python. _Proceedings of the 9th Python in Science Conference_, 51–56.])

#pustaka([Pedregosa, F., Varoquaux, G., Gramfort, A., et al. (2011). Scikit-learn: Machine learning in Python. _Journal of Machine Learning Research_, 12, 2825–2830.])

#pustaka([Sudjana. (2005). _Metoda Statistika_ (Edisi ke-6). Bandung: Tarsito.])

#pustaka([Walpole, R. E., Myers, R. H., Myers, S. L., & Ye, K. (2012). _Probability & Statistics for Engineers & Scientists_ (9th ed.). Boston: Prentice Hall.])

// ============================================================
//  LAMPIRAN
// ============================================================
#pagebreak(weak: true)
#heading(level: 1, numbering: none)[LAMPIRAN]

#isian(teks: [*Lampiran 1: Rekapitulasi Data Mentah BPS 38 Provinsi Tahun 2025*])

#align(center)[
#table(
  columns: (0.8cm, 4.5cm, 3.2cm, 2.5cm, 2.5cm),
  stroke: 0.5pt,
  inset: 4.5pt,
  align: (center, left, center, center, center),
  table.header(
    strong[No], strong[Provinsi], strong[SMA+ Pria (%)], strong[SMA+ Wanita (%)], strong[TPT (%)],
  ),
  [1], [ACEH], [53.12], [49.76], [5.64],
  [2], [SUMATERA UTARA], [55.64], [52.01], [5.32],
  [3], [SUMATERA BARAT], [46.66], [50.12], [5.62],
  [4], [RIAU], [46.88], [44.22], [4.16],
  [5], [JAMBI], [42.25], [36.77], [4.26],
  [6], [SUMATERA SELATAN], [41.70], [36.93], [3.69],
  [7], [BENGKULU], [44.67], [42.13], [3.41],
  [8], [LAMPUNG], [36.58], [32.33], [4.21],
  [9], [KEP. BANGKA BELITUNG], [41.54], [39.72], [4.45],
  [10], [KEP. RIAU], [65.40], [60.08], [6.45],
  [11], [DKI JAKARTA], [71.89], [64.70], [6.05],
  [12], [JAWA BARAT], [44.80], [36.54], [6.77],
  [13], [JAWA TENGAH], [33.21], [28.74], [4.66],
  [14], [DI YOGYAKARTA], [57.19], [52.67], [3.46],
  [15], [JAWA TIMUR], [39.26], [31.58], [3.88],
  [16], [BANTEN], [49.15], [41.18], [6.69],
  [17], [BALI], [56.20], [44.27], [1.49],
  [18], [NUSA TENGGARA BARAT], [41.80], [30.96], [3.06],
  [19], [NUSA TENGGARA TIMUR], [35.95], [32.87], [3.31],
  [20], [KALIMANTAN BARAT], [36.45], [30.61], [4.82],
  [21], [KALIMANTAN TENGAH], [38.94], [34.47], [3.97],
  [22], [KALIMANTAN SELATAN], [41.20], [34.71], [4.16],
  [23], [KALIMANTAN TIMUR], [57.95], [49.68], [5.18],
  [24], [KALIMANTAN UTARA], [47.43], [44.80], [3.85],
  [25], [SULAWESI UTARA], [49.27], [50.60], [5.99],
  [26], [SULAWESI TENGAH], [37.66], [35.76], [2.92],
  [27], [SULAWESI SELATAN], [43.65], [40.73], [4.21],
  [28], [SULAWESI TENGGARA], [44.67], [39.98], [3.31],
  [29], [GORONTALO], [31.37], [37.47], [3.42],
  [30], [SULAWESI BARAT], [36.44], [34.23], [2.86],
  [31], [MALUKU], [56.38], [54.61], [6.27],
  [32], [MALUKU UTARA], [45.39], [40.28], [4.55],
  [33], [PAPUA BARAT], [54.68], [46.10], [4.55],
  [34], [PAPUA BARAT DAYA], [62.26], [55.35], [6.85],
  [35], [PAPUA], [63.01], [55.73], [6.96],
  [36], [PAPUA SELATAN], [45.76], [37.80], [4.04],
  [37], [PAPUA TENGAH], [31.08], [26.68], [3.62],
  [38], [PAPUA PEGUNUNGAN], [21.00], [12.32], [1.68],
)
]

#v(1em)

#isian(teks: [*Lampiran 2: Struktur Kode Program Jupyter Notebook (`experiments/`)*])
#nomor(
  [`01_data_cleaning.ipynb` : Skrip pembersihan data BPS, normalisasi string nama provinsi, aggregasi gender, dan merging multi-tahun 2018–2025.],
  [`02_statistika_deskriptif.ipynb` : Skrip penentuan aturan Sturges, penyusunan tabel distribusi frekuensi 7 kelas, dan kalkulasi bertahap Mean, Median, serta Modus.],
  [`03_visualisasi.ipynb` : Skrip pembangkitan grafik resolusi tinggi (300 DPI) histogram, poligon frekuensi, dan kurva ogif positif/negatif.],
  [`04_korelasi_regresi.ipynb` : Skrip perhitungan manual NumPy untuk koefisien korelasi Pearson, pemodelan OLS, evaluasi backtesting walk-forward, dan peramalan tahun 2026.],
)
