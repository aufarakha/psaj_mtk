// ============================================================
//  TEMPLATE TYPST — LAPORAN PROYEK PSAJ (PPLG)
//  SMK Telkom Purwokerto
// ============================================================
//  Format mengikuti template asli Word:
//    - Kertas A4, margin kiri 4 cm, atas/bawah/kanan 3 cm
//    - Font: TeX Gyre Termes (setara Times New Roman) 12pt
//    - Spasi 1,5, rata kiri-kanan
//    - Judul gambar di bawah gambar; judul tabel di atas tabel
//    - Nomor halaman: romawi (bagian awal), angka (bagian isi)
// ============================================================

#let abu = rgb("#7f7f7f")

// ─── Counter ────────────────────────────────────────────────
#let _bab     = counter("_bab")
#let _tabel   = counter("_tabel")
#let _gambar  = counter("_gambar")

// ─── FUNGSI UTAMA: #show: psaj-doc ──────────────────────────
#let psaj-doc(body) = {
  set document(title: "Laporan PSAJ", author: "SMK Telkom Purwokerto")
  set text(font: ("TeX Gyre Termes", "Liberation Serif"), size: 12pt, lang: "id")
  set par(justify: true, leading: 0.9em)
  set page(
    paper: "a4",
    margin: (left: 4cm, right: 3cm, top: 3cm, bottom: 3cm),
  )

  // Heading level 1 = judul BAB (tengah, bold, 14pt)
  show heading.where(level: 1): it => {
    set align(center)
    set text(size: 14pt, weight: "bold")
    v(0.4em)
    it.body
    v(0.8em)
  }

  // Heading level 2 = sub-bab (kiri, bold, 12pt)
  show heading.where(level: 2): it => {
    set text(size: 12pt, weight: "bold")
    v(0.6em)
    it.body
    v(0.2em)
  }

  body
}

// ─── Catatan pembantu (teks abu miring) ─────────────────────
// Hapus semua #catatan[...] sebelum laporan dikumpulkan
#let catatan(body) = {
  set text(fill: abu, style: "italic", size: 11pt)
  block(inset: (left: 1em), body)
  v(0.4em)
}

// ─── Garis titik-titik untuk isian ──────────────────────────
/*#let isian(baris: 1) = {
  for _ in range(baris) {
    block(width: 100%)[#repeat[.]]
    v(0.1em)
  }
  v(0.3em)
}*/

// ─── Garis titik-titik / Teks Menjorok Fleksibel ────────
#let isian(teks: [], pakai-titik: false, menjorok: 0cm, baris: 1) = {
  // Pengaturan font khusus area ini
  set text(font: ("Times New Roman", "TeX Gyre Termes"), size: 12pt)
  set par(leading: 0.9em)
  
  // Bungkus semua dengan 'pad' untuk mengatur jarak menjorok
  pad(left: menjorok)[
    #if pakai-titik {
      // Jika pakai-titik: true -> Cetak teks + titik-titik sisa baris
      block(width: 100%)[
        #teks #box(width: 1fr)[#repeat[.]]
      ]
      v(0.1em)
      
      // Tambahan baris titik-titik kosong jika baris > 1
      if baris > 1 {
        for _ in range(baris - 1) {
          block(width: 100%)[#repeat[.]]
          v(0.1em)
        }
      }
    } else {
      // Jika pakai-titik: false -> Hanya cetak teks biasa (otomatis turun bawah)
      teks
    }
  ]
  v(0.3em)
}

// ─── Mulai BAB baru ─────────────────────────────────────────
// Contoh: #mulai-bab("I", 1, "PENDAHULUAN")
#let mulai-bab(angka-romawi, nomor-bab, judul-bab) = {
  pagebreak(weak: true)
  _bab.update(nomor-bab)
  _tabel.update(0)
  _gambar.update(0)
  heading(level: 1, numbering: none)[
    BAB #angka-romawi \
    #judul-bab
  ]
}

// ─── Sub-bab berlabel huruf ──────────────────────────────────
// Contoh: #subbab("A", "Latar Belakang Masalah")
#let subbab(huruf, judul) = {
  heading(level: 2, numbering: none)[#huruf. #judul]
}

// ─── Judul tabel otomatis (di atas tabel) ───────────────────
// Pattern: step() di luar context{}, get() di dalam context{}
#let judul-tabel(judul) = {
  _tabel.step()
  align(center, context strong[Tabel #str(_bab.get().first()).#str(_tabel.get().first()) #judul])
  v(0.2em)
}

// ─── Tabel standar dengan judul otomatis ─────────────────────
// isi: blok #table(...) typst biasa
#let tbl(judul, isi) = {
  judul-tabel(judul)
  align(center, isi)
  v(0.8em)
}

// ─── Kotak placeholder untuk gambar/diagram ─────────────────
#let kotak(teks, tinggi: 5cm) = {
  rect(
    width: 100%, height: tinggi,
    stroke: (paint: gray, dash: "dashed"),
    fill: rgb("#f8f8f8"),
  )[
    #align(center + horizon)[
      #text(fill: abu, style: "italic")[#teks]
    ]
  ]
}

// ─── Gambar dengan judul otomatis (di bawah) ────────────────
// Contoh: #gbr("Use Case Diagram", kotak("[ diagram ]"))
//    atau: #gbr("Diagram", image("diagram.png"))
#let gbr(judul, isi) = {
  align(center, isi)
  v(0.3em)
  _gambar.step()
  align(center, context emph[Gambar #str(_bab.get().first()).#str(_gambar.get().first()) #judul])
  v(0.8em)
}

// ─── Daftar nomor sederhana ──────────────────────────────────
#let nomor(..items) = {
  enum(numbering: "1.", ..items)
}
