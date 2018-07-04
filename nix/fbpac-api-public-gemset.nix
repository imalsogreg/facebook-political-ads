{
  actionmailer = {
    dependencies = ["actionpack" "actionview" "activejob" "mail" "rails-dom-testing"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ivyjsapqgn1xfb2p8yqjrg2jldqm5r7hxrjxq6kdr05gk4fsg59";
      type = "gem";
    };
    version = "4.2.10";
  };
  actionpack = {
    dependencies = ["actionview" "activesupport" "rack" "rack-test" "rails-dom-testing" "rails-html-sanitizer"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0l6agrxdaishxjx2zc2x8md95plfp39bfskzgs6v9gsdp2y2arpx";
      type = "gem";
    };
    version = "4.2.10";
  };
  actionpack-action_caching = {
    dependencies = ["actionpack"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dv0jdk29mlkh0c114jpmyrlaafcg7skkj4kygjmyd222c32c3r6";
      type = "gem";
    };
    version = "1.2.0";
  };
  actionview = {
    dependencies = ["activesupport" "builder" "erubis" "rails-dom-testing" "rails-html-sanitizer"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1jrx2pmkywk70z7n17gw3jrcdw3n03wdzvg45bnq8wxshl1lmbhv";
      type = "gem";
    };
    version = "4.2.10";
  };
  activejob = {
    dependencies = ["activesupport" "globalid"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10jsa5pqklcsd2npicqxr5abjlwi53di2brpzgz35k557fkpc1z8";
      type = "gem";
    };
    version = "4.2.10";
  };
  activemodel = {
    dependencies = ["activesupport" "builder"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0c4vj9xajxa906bqbcjpni74nya6rh2nbb15gl8xm0vl9zf3ll9v";
      type = "gem";
    };
    version = "4.2.10";
  };
  activerecord = {
    dependencies = ["activemodel" "activesupport" "arel"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lws9y4p9c2vnmv3ddfpv8jh6azlddppl3fi31vahaz14ifxjk5s";
      type = "gem";
    };
    version = "4.2.10";
  };
  activesupport = {
    dependencies = ["i18n" "minitest" "thread_safe" "tzinfo"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0s12j8vl8vrxfngkdlz9g8bpz9akq1z42d57mx5r537b2pji8nr7";
      type = "gem";
    };
    version = "4.2.10";
  };
  arel = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nfcrdiys6q6ylxiblky9jyssrw2xj96fmxmal7f4f0jj3417vj4";
      type = "gem";
    };
    version = "6.0.4";
  };
  asset_sync = {
    dependencies = ["activemodel" "fog" "mime-types" "unf"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "12fpz9k5hf53nrsdf3nfzsyvj2xgc9020isvwnjsx0nvzzc08fmk";
      type = "gem";
    };
    version = "1.2.1";
  };
  bcrypt = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1d254sdhdj6mzak3fb5x3jam8b94pvl1srladvs53j05a89j5z50";
      type = "gem";
    };
    version = "3.1.11";
  };
  binding_of_caller = {
    dependencies = ["debug_inspector"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "05syqlks7463zsy1jdfbbdravdhj9hpj5pv2m74blqpv8bq4vv5g";
      type = "gem";
    };
    version = "0.8.0";
  };
  builder = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qibi5s67lpdv1wgcj66wcymcr04q6j4mzws6a479n0mlrmh5wr1";
      type = "gem";
    };
    version = "3.2.3";
  };
  byebug = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10znc1hjv8n686hhpl08f3m2g6h08a4b83nxblqwy2kqamkxcqf8";
      type = "gem";
    };
    version = "10.0.2";
  };
  CFPropertyList = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hadm41xr1fq3qp74jd9l5q8l0j9083rgklgzsilllwaav7qrrid";
      type = "gem";
    };
    version = "2.3.6";
  };
  coffee-rails = {
    dependencies = ["coffee-script" "railties"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0jp81gjcid66ialk5n242y27p3payy0cz6c6i80ik02nx54mq2h8";
      type = "gem";
    };
    version = "4.2.2";
  };
  coffee-script = {
    dependencies = ["coffee-script-source" "execjs"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0rc7scyk7mnpfxqv5yy4y5q1hx3i7q3ahplcp4bq2g5r24g2izl2";
      type = "gem";
    };
    version = "2.4.1";
  };
  coffee-script-source = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1907v9q1zcqmmyqzhzych5l7qifgls2rlbnbhy5vzyr7i7yicaz1";
      type = "gem";
    };
    version = "1.12.2";
  };
  concurrent-ruby = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "183lszf5gx84kcpb779v6a2y0mx9sssy8dgppng1z9a505nj1qcf";
      type = "gem";
    };
    version = "1.0.5";
  };
  crass = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1czijxlagzpzwchr2ldrgfi7kywg08idjpq37ndcmwh4fmz72c4l";
      type = "gem";
    };
    version = "1.0.3";
  };
  debug_inspector = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0vxr0xa1mfbkfcrn71n7c4f2dj7la5hvphn904vh20j3x4j5lrx0";
      type = "gem";
    };
    version = "0.0.3";
  };
  devise = {
    dependencies = ["bcrypt" "orm_adapter" "railties" "responders" "warden"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1xmxfhym0yxwb0zwmmzhdiykbpyqqm3id02g7rf3vcgbc1lqvdnj";
      type = "gem";
    };
    version = "4.4.3";
  };
  erubis = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fj827xqjs91yqsydf0zmfyw9p4l2jz5yikg3mppz6d7fi8kyrb3";
      type = "gem";
    };
    version = "2.7.0";
  };
  excon = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15l9w0938c19nxmrp09n75qpmm64k12xj69h47yvxzcxcpbgnkb2";
      type = "gem";
    };
    version = "0.62.0";
  };
  execjs = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1yz55sf2nd3l666ms6xr18sm2aggcvmb8qr3v53lr4rir32y1yp1";
      type = "gem";
    };
    version = "2.7.0";
  };
  ffi = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0zw6pbyvmj8wafdc7l5h7w20zkp1vbr2805ql5d941g2b20pk4zr";
      type = "gem";
    };
    version = "1.9.23";
  };
  fission = {
    dependencies = ["CFPropertyList"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "09pmp1j1rr8r3pcmbn2na2ls7s1j9ijbxj99xi3a8r6v5xhjdjzh";
      type = "gem";
    };
    version = "0.5.0";
  };
  fog = {
    dependencies = ["fog-aliyun" "fog-atmos" "fog-aws" "fog-brightbox" "fog-cloudatcost" "fog-core" "fog-digitalocean" "fog-dnsimple" "fog-dynect" "fog-ecloud" "fog-google" "fog-internet-archive" "fog-joyent" "fog-json" "fog-local" "fog-openstack" "fog-powerdns" "fog-profitbricks" "fog-rackspace" "fog-radosgw" "fog-riakcs" "fog-sakuracloud" "fog-serverlove" "fog-softlayer" "fog-storm_on_demand" "fog-terremark" "fog-vmfusion" "fog-voxel" "fog-vsphere" "fog-xenserver" "fog-xml" "ipaddress" "json"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01ydbp9cwnwas8ksij1k455hf5yghnzk63qz3rd9y1wmsmcwmdl7";
      type = "gem";
    };
    version = "1.41.0";
  };
  fog-aliyun = {
    dependencies = ["fog-core" "fog-json" "ipaddress" "xml-simple"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0x66xyrw4ahyr6f9masiqmz5q6h8scv46y59crnfp8dj7r52hw8m";
      type = "gem";
    };
    version = "0.2.0";
  };
  fog-atmos = {
    dependencies = ["fog-core" "fog-xml"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1aaxgnw9zy96gsh4h73kszypc32sx497s6bslvhfqh32q9d1y8c9";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-aws = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zvcsgskxmlhb31wjcbkfi6m8b91y80kcwk61byybld9xl431mwf";
      type = "gem";
    };
    version = "0.11.0";
  };
  fog-brightbox = {
    dependencies = ["fog-core" "fog-json" "inflecto"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fmdi00yif291d5la429i80s25w9acxgdz77rjvfhy4wlpv8bbsl";
      type = "gem";
    };
    version = "0.14.0";
  };
  fog-cloudatcost = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1320ax5x8gxdnaxkgzhmy751nip771ax7nyljfgqblw6l4m0gigy";
      type = "gem";
    };
    version = "0.1.2";
  };
  fog-core = {
    dependencies = ["builder" "excon" "formatador"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "02449kh2x3zj9xxszm02vy8zpbsrykvjrg5gj3kqcy2yizy2bhp3";
      type = "gem";
    };
    version = "1.45.0";
  };
  fog-digitalocean = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zsgm4aqbsjx6j6z543ra9ayaa7yx6sl0bwi27k3wkgwlz089yp6";
      type = "gem";
    };
    version = "0.3.0";
  };
  fog-dnsimple = {
    dependencies = ["fog-core" "fog-json"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0vkx74hgwaymgiw1swqcf2ik65jiznxhf3z50434dgvvn5zk65sw";
      type = "gem";
    };
    version = "1.0.0";
  };
  fog-dynect = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bmv12zjfbbcl33vg664bd6fp3q7rp0xi8n53i3707bi9zvf7d98";
      type = "gem";
    };
    version = "0.0.3";
  };
  fog-ecloud = {
    dependencies = ["fog-core" "fog-xml"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18rb4qjad9xwwqvvpj8r2h0hi9svy71pm4d3fc28cdcnfarmdi06";
      type = "gem";
    };
    version = "0.3.0";
  };
  fog-google = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0z4vmswpqwph04c0wqzrscns1d1wdm8kbxx457bv156mawzrhfj3";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-internet-archive = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "19bfpph0j0pizgkkh63zbfaxxhbpcjxkaf4ddw3qy1plhwn40hnf";
      type = "gem";
    };
    version = "0.0.1";
  };
  fog-joyent = {
    dependencies = ["fog-core" "fog-json"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01aihain51b253pvf0al329305vq5w6ndfp18a6hcdqiybzizvb0";
      type = "gem";
    };
    version = "0.0.1";
  };
  fog-json = {
    dependencies = ["fog-core" "multi_json"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0advkkdjajkym77r3c0bg2rlahl2akj0vl4p5r273k2qmi16n00r";
      type = "gem";
    };
    version = "1.0.2";
  };
  fog-local = {
    dependencies = ["fog-core"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "03y4l2x5as5dxz6s8mxwxzvjss20wgdqazzc7ibflbavx59w0z9j";
      type = "gem";
    };
    version = "0.5.0";
  };
  fog-openstack = {
    dependencies = ["fog-core" "fog-json" "ipaddress"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "06v9wsx3sp10wgdkvz4s4dfygmhr11wsxcfic81rl4n2y9vfqrxs";
      type = "gem";
    };
    version = "0.1.25";
  };
  fog-powerdns = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08zavzwfkk344gz83phz4sy9nsjznsdjsmn1ifp6ja17bvydlhh7";
      type = "gem";
    };
    version = "0.1.1";
  };
  fog-profitbricks = {
    dependencies = ["fog-core" "fog-json"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0879dfgdd9xby0l41a0rq0nzj9sj24l34knkjf48rdihvi7pbcl4";
      type = "gem";
    };
    version = "4.1.1";
  };
  fog-rackspace = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0r3b8frzc07r85grckfh2d7chsw0axrqim7abfqxkfmgkddiw531";
      type = "gem";
    };
    version = "0.1.5";
  };
  fog-radosgw = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nslgv8yp5qkiryj3zsm91gs7s6i626igj61kwxjjwk2yv6swyr6";
      type = "gem";
    };
    version = "0.0.5";
  };
  fog-riakcs = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1nbxc4dky3agfwrmgm1aqmi59p6vnvfnfbhhg7xpg4c2cf41whxm";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-sakuracloud = {
    dependencies = ["fog-core" "fog-json"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08krsn9sk5sx0aza812g31r169bd0zanb8pq5am3a64j6azarimd";
      type = "gem";
    };
    version = "1.7.5";
  };
  fog-serverlove = {
    dependencies = ["fog-core" "fog-json"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hxgmwzygrw25rbsy05i6nzsyr0xl7xj5j2sjpkb9n9wli5sagci";
      type = "gem";
    };
    version = "0.1.2";
  };
  fog-softlayer = {
    dependencies = ["fog-core" "fog-json"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0f2crz9g3s6m6casr3bsdqc7lp55gd22iq99r63zi80fx37c1pzf";
      type = "gem";
    };
    version = "1.1.4";
  };
  fog-storm_on_demand = {
    dependencies = ["fog-core" "fog-json"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0fif1x8ci095b2yyilf65n7x6iyvn448azrsnmwsdkriy8vxxv3y";
      type = "gem";
    };
    version = "0.1.1";
  };
  fog-terremark = {
    dependencies = ["fog-core" "fog-xml"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01lfkh9jppj0iknlklmwyb7ym3bfhkq58m3absb6rf5a5mcwi3lf";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-vmfusion = {
    dependencies = ["fission" "fog-core"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0g0l0k9ylxk1h9pzqr6h2ba98fl47lpp3j19lqv4jxw0iw1rqxn4";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-voxel = {
    dependencies = ["fog-core" "fog-xml"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10skdnj59yf4jpvq769njjrvh2l0wzaa7liva8n78qq003mvmfgx";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-vsphere = {
    dependencies = ["fog-core" "rbvmomi"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04ff2y8cqs4vs4mscgvflwa400frxy50z8wbfqwq5vplknsq5j4k";
      type = "gem";
    };
    version = "2.0.1";
  };
  fog-xenserver = {
    dependencies = ["fog-core" "fog-xml"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0b85lsp7108spab8a40qscx01izn1w48lhjkz8bwjv93xizapvbb";
      type = "gem";
    };
    version = "0.3.0";
  };
  fog-xml = {
    dependencies = ["fog-core" "nokogiri"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "043lwdw2wsi6d55ifk0w3izi5l1d1h0alwyr3fixic7b94kc812n";
      type = "gem";
    };
    version = "0.1.3";
  };
  formatador = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1gc26phrwlmlqrmz4bagq1wd5b7g64avpx0ghxr9xdxcvmlii0l0";
      type = "gem";
    };
    version = "0.2.5";
  };
  globalid = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "02smrgdi11kziqi9zhnsy9i6yr2fnxrqlv3lllsvdjki3cd4is38";
      type = "gem";
    };
    version = "0.4.1";
  };
  http_accept_language = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0d0nlfz9vm4jr1l6q0chx4rp2hrnrfbx3gadc1dz930lbbaz0hq0";
      type = "gem";
    };
    version = "2.1.1";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "038qvz7kd3cfxk8bvagqhakx68pfbnmghpdkx7573wbf0maqp9a3";
      type = "gem";
    };
    version = "0.9.5";
  };
  inflecto = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "085l5axmvqw59mw5jg454a3m3gr67ckq9405a075isdsn7bm3sp4";
      type = "gem";
    };
    version = "0.0.2";
  };
  ipaddress = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1x86s0s11w202j6ka40jbmywkrx8fhq8xiy8mwvnkhllj57hqr45";
      type = "gem";
    };
    version = "0.8.3";
  };
  jbuilder = {
    dependencies = ["activesupport" "multi_json"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1n3myqk2hdnidzzbgcdz2r1y4cr5vpz5nkfzs0lz4y9gkjbjyh2j";
      type = "gem";
    };
    version = "2.7.0";
  };
  jquery-rails = {
    dependencies = ["rails-dom-testing" "railties" "thor"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "02ii77vwxc49f2lrkbdzww2168bp5nihwzakc9mqyrsbw394w7ki";
      type = "gem";
    };
    version = "4.3.1";
  };
  json = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qmj7fypgb9vag723w1a49qihxrcf5shzars106ynw2zk352gbv5";
      type = "gem";
    };
    version = "1.8.6";
  };
  kaminari = {
    dependencies = ["activesupport" "kaminari-actionview" "kaminari-activerecord" "kaminari-core"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1j27y5phifwpggspglmg8pmlf6n4jblxwziix9am42661c770jlm";
      type = "gem";
    };
    version = "1.1.1";
  };
  kaminari-actionview = {
    dependencies = ["actionview" "kaminari-core"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1386wshpy1ygbris0s7rv7lyzbs0v8dfqkzdwsrsgm9fd1ira640";
      type = "gem";
    };
    version = "1.1.1";
  };
  kaminari-activerecord = {
    dependencies = ["activerecord" "kaminari-core"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0q31ik5648xi2hpy61knnjd0m7rvs17i93gzwcbh3ccj1y24gv2x";
      type = "gem";
    };
    version = "1.1.1";
  };
  kaminari-core = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1cfjrhvidvgdwp9ffsm9d4c2s18k2zp3gnya3f41qb3fc6bc2q2w";
      type = "gem";
    };
    version = "1.1.1";
  };
  kgio = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1528pyj1szzzp3pgj05fzjd36qjrxm9yj2x5radc9p1z7vl67y50";
      type = "gem";
    };
    version = "2.11.2";
  };
  loofah = {
    dependencies = ["crass" "nokogiri"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0yjs6wbcj3n06d3xjqpy3qbpx0bfa12h3x2rbpc2k33ldjlkx6zy";
      type = "gem";
    };
    version = "2.2.2";
  };
  mail = {
    dependencies = ["mini_mime"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10dyifazss9mgdzdv08p47p344wmphp5pkh5i73s7c04ra8y6ahz";
      type = "gem";
    };
    version = "2.7.0";
  };
  mime-types = {
    dependencies = ["mime-types-data"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0087z9kbnlqhci7fxh9f6il63hj1k02icq2rs0c6cppmqchr753m";
      type = "gem";
    };
    version = "3.1";
  };
  mime-types-data = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04my3746hwa4yvbx1ranhfaqkgf6vavi1kyijjnw8w3dy37vqhkm";
      type = "gem";
    };
    version = "3.2016.0521";
  };
  mini_mime = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lwhlvjqaqfm6k3ms4v29sby9y7m518ylsqz2j74i740715yl5c8";
      type = "gem";
    };
    version = "1.0.0";
  };
  mini_portile2 = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "13d32jjadpjj6d2wdhkfpsmy68zjx90p49bgf8f7nkpz86r1fr11";
      type = "gem";
    };
    version = "2.3.0";
  };
  minitest = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0icglrhghgwdlnzzp4jf76b0mbc71s80njn5afyfjn4wqji8mqbq";
      type = "gem";
    };
    version = "5.11.3";
  };
  multi_json = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1rl0qy4inf1mp8mybfk56dfga0mvx97zwpmq5xmiwl5r770171nv";
      type = "gem";
    };
    version = "1.13.1";
  };
  nokogiri = {
    dependencies = ["mini_portile2"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "05fm3xh462glvs0rwnfmc1spmgl4ljg2giifynbmwwqvl42zaaiq";
      type = "gem";
    };
    version = "1.8.2";
  };
  orm_adapter = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fg9jpjlzf5y49qs9mlpdrgs5rpcyihq1s4k79nv9js0spjhnpda";
      type = "gem";
    };
    version = "0.5.0";
  };
  pg = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00vhasqwc4f98qb4wxqn2h07fjwzhp5lwyi41j2gndi2g02wrdqh";
      type = "gem";
    };
    version = "0.21.0";
  };
  rack = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "03w1ri5l91q800f1bdcdl5rbagy7s4kml136b42s2lmxmznxhr07";
      type = "gem";
    };
    version = "1.6.9";
  };
  rack-cors = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1j27vy1bmhbqcyzhxg8d07qassmax769xjalfwcwz6qfiq8cf013";
      type = "gem";
    };
    version = "1.0.2";
  };
  rack-test = {
    dependencies = ["rack"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0h6x5jq24makgv2fq5qqgjlrk74dxfy62jif9blk43llw8ib2q7z";
      type = "gem";
    };
    version = "0.6.3";
  };
  rails = {
    dependencies = ["actionmailer" "actionpack" "actionview" "activejob" "activemodel" "activerecord" "activesupport" "railties" "sprockets-rails"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15vbdlkmlh470g7msqhmcmhxhi4finv3cjg595x9viafvphnf40l";
      type = "gem";
    };
    version = "4.2.10";
  };
  rails-deprecated_sanitizer = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qxymchzdxww8bjsxj05kbf86hsmrjx40r41ksj0xsixr2gmhbbj";
      type = "gem";
    };
    version = "1.0.3";
  };
  rails-dom-testing = {
    dependencies = ["activesupport" "nokogiri" "rails-deprecated_sanitizer"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wssfqpn00byhvp2372p99mphkcj8qx6pf6646avwr9ifvq0q1x6";
      type = "gem";
    };
    version = "1.0.9";
  };
  rails-html-sanitizer = {
    dependencies = ["loofah"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1gv7vr5d9g2xmgpjfq4nxsqr70r9pr042r9ycqqnfvw5cz9c7jwr";
      type = "gem";
    };
    version = "1.0.4";
  };
  railties = {
    dependencies = ["actionpack" "activesupport" "rake" "thor"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0snymfqj2cql0gp51i6a44avcirdridc15yggnxjj9raa9f3229p";
      type = "gem";
    };
    version = "4.2.10";
  };
  raindrops = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qpbd9jif40c53fz2r0l8khfl016y8s8bkx37ibcaafclbl3xygp";
      type = "gem";
    };
    version = "0.19.0";
  };
  rake = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1idi53jay34ba9j68c3mfr9wwkg3cd9qh0fn9cg42hv72c6q8dyg";
      type = "gem";
    };
    version = "12.3.1";
  };
  rb-fsevent = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lm1k7wpz69jx7jrc92w3ggczkjyjbfziq5mg62vjnxmzs383xx8";
      type = "gem";
    };
    version = "0.10.3";
  };
  rb-inotify = {
    dependencies = ["ffi"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0yfsgw5n7pkpyky6a9wkf1g9jafxb0ja7gz0qw0y14fd2jnzfh71";
      type = "gem";
    };
    version = "0.9.10";
  };
  rbvmomi = {
    dependencies = ["builder" "json" "nokogiri" "trollop"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0a0093akyp8hz7xjm4pi2dcg64hwl80zfh8krzlhlmhywh3dbsn0";
      type = "gem";
    };
    version = "1.11.7";
  };
  rdoc = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "13ba2mhqqcsp3k97x3iz9x29xk26rv4561lfzzzibcy41vvj1n4c";
      type = "gem";
    };
    version = "4.3.0";
  };
  responders = {
    dependencies = ["actionpack" "railties"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1rhdyyvvm26f2l3fgwdp6xasfl2y0whwgy766bhdwz697mf78zfn";
      type = "gem";
    };
    version = "2.4.0";
  };
  sass = {
    dependencies = ["sass-listen"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "19wyzp9qsg8hdkkxlsv713w0qmy66qrdp0shj42587ssx4qhrlag";
      type = "gem";
    };
    version = "3.5.6";
  };
  sass-listen = {
    dependencies = ["rb-fsevent" "rb-inotify"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xw3q46cmahkgyldid5hwyiwacp590zj2vmswlll68ryvmvcp7df";
      type = "gem";
    };
    version = "4.0.0";
  };
  sdoc = {
    dependencies = ["json" "rdoc"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qhvy10vnmrqcgh8494m13kd5ag9c3sczzhfasv8j0294ylk679n";
      type = "gem";
    };
    version = "0.4.2";
  };
  spring = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "168yz9c1fv21wc5i8q7n43b9nk33ivg3ws1fn6x0afgryz3ssx75";
      type = "gem";
    };
    version = "2.0.2";
  };
  sprockets = {
    dependencies = ["concurrent-ruby" "rack"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0sv3zk5hwxyjvg7iy9sggjc7k3mfxxif7w8p260rharfyib939ar";
      type = "gem";
    };
    version = "3.7.1";
  };
  sprockets-rails = {
    dependencies = ["actionpack" "activesupport" "sprockets"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ab42pm8p5zxpv3sfraq45b9lj39cz9mrpdirm30vywzrwwkm5p1";
      type = "gem";
    };
    version = "3.2.1";
  };
  sqlite3 = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01ifzp8nwzqppda419c9wcvr8n82ysmisrs0hph9pdmv1lpa4f5i";
      type = "gem";
    };
    version = "1.3.13";
  };
  thor = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nmqpyj642sk4g16nkbq6pj856adpv91lp4krwhqkh2iw63aszdl";
      type = "gem";
    };
    version = "0.20.0";
  };
  thread_safe = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nmhcgq6cgz44srylra07bmaw99f5271l0dpsvl5f75m44l0gmwy";
      type = "gem";
    };
    version = "0.3.6";
  };
  trollop = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0415y63df86sqj43c0l82and65ia5h64if7n0znkbrmi6y0jwhl8";
      type = "gem";
    };
    version = "2.1.2";
  };
  tzinfo = {
    dependencies = ["thread_safe"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fjx9j327xpkkdlxwmkl3a8wqj7i4l4jwlrv3z13mg95z9wl253z";
      type = "gem";
    };
    version = "1.2.5";
  };
  uglifier = {
    dependencies = ["execjs"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1gs662wp1xkrjv2g606ddcfyrylv06rz132ndidgk7ajljv6bay7";
      type = "gem";
    };
    version = "4.1.8";
  };
  unf = {
    dependencies = ["unf_ext"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bh2cf73i2ffh4fcpdn9ir4mhq8zi50ik0zqa1braahzadx536a9";
      type = "gem";
    };
    version = "0.1.4";
  };
  unf_ext = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "06p1i6qhy34bpb8q8ms88y6f2kz86azwm098yvcc0nyqk9y729j1";
      type = "gem";
    };
    version = "0.0.7.5";
  };
  unicorn = {
    dependencies = ["kgio" "raindrops"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ldb68m8zb283isiyjmy77kddj2rm0gjapb9cym16y12myxj38i5";
      type = "gem";
    };
    version = "5.2.0";
  };
  warden = {
    dependencies = ["rack"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0va966lhpylcwbqb9n151kkihx30agh0a57mwjwdxyanll4s1q12";
      type = "gem";
    };
    version = "1.2.7";
  };
  web-console = {
    dependencies = ["activemodel" "binding_of_caller" "railties" "sprockets-rails"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0f8mgdjnkwb2gmnd73hnlx8p2clzvpz007alhsglqgylpj6m20jk";
      type = "gem";
    };
    version = "2.3.0";
  };
  xml-simple = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xlqplda3fix5pcykzsyzwgnbamb3qrqkgbrhhfz2a2fxhrkvhw8";
      type = "gem";
    };
    version = "1.1.5";
  };
}