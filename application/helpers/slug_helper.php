<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
function slug($text)
{
  $kataAsal = $text;
    /*
        - Stopword removal
        - stemming
        - filtering
    */

    // replace non letter or digits by -
    $text = preg_replace('~[^\\pL\d]+~u', ' ', $text);
    // trim
    $text = trim($text, '-');
    // transliterate
    $text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);
    // lowercase
    $text = strtolower($text);
    // remove unwanted characters
    $text = preg_replace('~[^-\w]+~', ' ', $text);
    // $text = preg_replace('/\b  \b/', ' ', $text);

    if (empty($text))
    {
        return 'Belum ada jawaban';
    }

    //Fungsi menghapus angka
    $nomor = array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9);
    foreach ($nomor as $n => $value) {
      $text = str_replace($nomor[$n], "", $text);
    }

    $astoplist = array (
      '/\bada\b/', '/\badalah\b/', '/\badanya\b/', '/\badapun\b/', '/\bagak\b/', '/\bagaknya\b/', '/\bagar\b/', '/\bakan\b/', '/\bakankah\b/', '/\bakhir\b/', '/\bakhiri\b/', '/\bakhirnya\b/', '/\baku\b/', '/\bakulah\b/',
      '/\bamat\b/', '/\bamatlah\b/', '/\banda\b/', '/\bandalah\b/', '/\bantar\b/', '/\bantara\b/', '/\bantaranya\b/', '/\bapa\b/', '/\bapaan\b/', '/\bapabila\b/', '/\bapakah\b/', '/\bapalagi\b/', '/\bapatah\b/', '/\bartinya\b/',
      '/\basal\b/', '/\basalkan\b/', '/\batas\b/', '/\batau\b/', '/\bataukah\b/', '/\bataupun\b/', '/\bawal\b/', '/\bawalnya\b/', '/\bbagai\b/', '/\bbagaikan\b/', '/\bbagaimana\b/', '/\bbagaimanakah\b/', '/\bbagaimanapun\b/', '/\bbagi\b/',
      '/\bbagian\b/', '/\bbahkan\b/', '/\bbahwa\b/', '/\bbahwasanya\b/', '/\bbaik\b/', '/\bbakal\b/', '/\bbakalan\b/', '/\bbalik\b/', '/\bbanyak\b/', '/\bbapak\b/', '/\bbaru\b/', '/\bbawah\b/', '/\bbeberapa\b/', '/\bbegini\b/',
      '/\bbeginian\b/', '/\bbeginikah\b/', '/\bbeginilah\b/', '/\bbegitu\b/', '/\bbegitukah\b/', '/\bbegitulah\b/', '/\bbegitupun\b/', '/\bbekerja\b/', '/\bbelakang\b/', '/\bbelakangan\b/', '/\bbelum\b/', '/\bbelumlah\b/', '/\bbenar\b/', '/\bbenarkah\b/',
      '/\bbenarlah\b/', '/\bberada\b/', '/\bberakhir\b/', '/\bberakhirlah\b/', '/\bberakhirnya\b/', '/\bberapa\b/', '/\bberapakah\b/', '/\bberapalah\b/', '/\bberapapun\b/', '/\bberarti\b/', '/\bberawal\b/', '/\bberbagai\b/', '/\bberdatangan\b/', '/\bberi\b/',
      '/\bberikan\b/', '/\bberikut\b/', '/\bberikutnya\b/', '/\bberjumlah\b/', '/\bberkali-kali\b/', '/\bberkata\b/', '/\bberkehendak\b/', '/\bberkeinginan\b/', '/\bberkenaan\b/', '/\bberlainan\b/', '/\bberlalu\b/', '/\bberlangsung\b/', '/\bberlebihan\b/', '/\bbermacam\b/',
      '/\bbermacam-macam\b/', '/\bbermaksud\b/', '/\bbermula\b/', '/\bbersama\b/', '/\bbersama-sama\b/', '/\bbersiap\b/', '/\bbersiap-siap\b/', '/\bbertanya\b/', '/\bbertanya-tanya\b/', '/\bberturut\b/', '/\bberturut-turut\b/', '/\bbertutur\b/', '/\bberujar\b/', '/\bberupa\b/',
      '/\bbesar\b/', '/\bbetul\b/', '/\bbetulkah\b/', '/\bbiasa\b/', '/\bbiasanya\b/', '/\bbila\b/', '/\bbilakah\b/', '/\bbisa\b/', '/\bbisakah\b/', '/\bboleh\b/', '/\bbolehkah\b/', '/\bbolehlah\b/', '/\bbuat\b/', '/\bbukan\b/',
      '/\bbukankah\b/', '/\bbukanlah\b/', '/\bbukannya\b/', '/\bbulan\b/', '/\bbung\b/', '/\bcara\b/', '/\bcaranya\b/', '/\bcukup\b/', '/\bcukupkah\b/', '/\bcukuplah\b/', '/\bcuma\b/', '/\bdahulu\b/', '/\bdalam\b/', '/\bdan\b/',
      '/\bdapat\b/', '/\bdari\b/', '/\bdaripada\b/', '/\bdatang\b/', '/\bdekat\b/', '/\bdemi\b/', '/\bdemikian\b/', '/\bdemikianlah\b/', '/\bdengan\b/', '/\bdepan\b/', '/\bdi\b/', '/\bdia\b/', '/\bdiakhiri\b/', '/\bdiakhirinya\b/',
      '/\bdialah\b/', '/\bdiantara\b/', '/\bdiantaranya\b/', '/\bdiberi\b/', '/\bdiberikan\b/', '/\bdiberikannya\b/', '/\bdibuat\b/', '/\bdibuatnya\b/', '/\bdidapat\b/', '/\bdidatangkan\b/', '/\bdigunakan\b/', '/\bdiibaratkan\b/', '/\bdiibaratkannya\b/', '/\bdiingat\b/',
      '/\bdiingatkan\b/', '/\bdiinginkan\b/', '/\bdijawab\b/', '/\bdijelaskan\b/', '/\bdijelaskannya\b/', '/\bdikarenakan\b/', '/\bdikatakan\b/', '/\bdikatakannya\b/', '/\bdikerjakan\b/', '/\bdiketahui\b/', '/\bdiketahuinya\b/', '/\bdikira\b/', '/\bdilakukan\b/', '/\bdilalui\b/',
      '/\bdilihat\b/', '/\bdimaksud\b/', '/\bdimaksudkan\b/', '/\bdimaksudkannya\b/', '/\bdimaksudnya\b/', '/\bdiminta\b/', '/\bdimintai\b/', '/\bdimisalkan\b/', '/\bdimulai\b/', '/\bdimulailah\b/', '/\bdimulainya\b/', '/\bdimungkinkan\b/', '/\bdini\b/', '/\bdipastikan\b/',
      '/\bdiperbuat\b/', '/\bdiperbuatnya\b/', '/\bdipergunakan\b/', '/\bdiperkirakan\b/', '/\bdiperlihatkan\b/', '/\bdiperlukan\b/', '/\bdiperlukannya\b/', '/\bdipersoalkan\b/', '/\bdipertanyakan\b/', '/\bdipunyai\b/', '/\bdiri\b/', '/\bdirinya\b/', '/\bdisampaikan\b/', '/\bdisebut\b/',
      '/\bdisebutkan\b/', '/\bdisebutkannya\b/', '/\bdisini\b/', '/\bdisinilah\b/', '/\bditambahkan\b/', '/\bditandaskan\b/', '/\bditanya\b/', '/\bditanyai\b/', '/\bditanyakan\b/', '/\bditegaskan\b/', '/\bditujukan\b/', '/\bditunjuk\b/', '/\bditunjuki\b/', '/\bditunjukkan\b/',
      '/\bditunjukkannya\b/', '/\bditunjuknya\b/', '/\bdituturkan\b/', '/\bdituturkannya\b/', '/\bdiucapkan\b/', '/\bdiucapkannya\b/', '/\bdiungkapkan\b/', '/\bdong\b/', '/\bdua\b/', '/\bdulu\b/', '/\bempat\b/', '/\benggak\b/', '/\benggaknya\b/', '/\bentah\b/',
      '/\bentahlah\b/', '/\bguna\b/', '/\bgunakan\b/', '/\bhal\b/', '/\bhampir\b/', '/\bhanya\b/', '/\bhanyalah\b/', '/\bhari\b/', '/\bharus\b/', '/\bharuslah\b/', '/\bharusnya\b/', '/\bhendak\b/', '/\bhendaklah\b/', '/\bhendaknya\b/',
      '/\bhingga\b/', '/\bia\b/', '/\bialah\b/', '/\bibarat\b/', '/\bibaratkan\b/', '/\bibaratnya\b/', '/\bibu\b/', '/\bikut\b/', '/\bingat\b/', '/\bingat-ingat\b/', '/\bingin\b/', '/\binginkah\b/', '/\binginkan\b/', '/\bini\b/',
      '/\binikah\b/', '/\binilah\b/', '/\bitu\b/', '/\bitukah\b/', '/\bitulah\b/', '/\bjadi\b/', '/\bjadilah\b/', '/\bjadinya\b/', '/\bjangan\b/', '/\bjangankan\b/', '/\bjanganlah\b/', '/\bjauh\b/', '/\bjawab\b/', '/\bjawaban\b/',
      '/\bjawabnya\b/', '/\bjelas\b/', '/\bjelaskan\b/', '/\bjelaslah\b/', '/\bjelasnya\b/', '/\bjika\b/', '/\bjikalau\b/', '/\bjuga\b/', '/\bjumlah\b/', '/\bjumlahnya\b/', '/\bjustru\b/', '/\bkala\b/', '/\bkalau\b/', '/\bkalaulah\b/',
      '/\bkalaupun\b/', '/\bkalian\b/', '/\bkami\b/', '/\bkamilah\b/', '/\bkamu\b/', '/\bkamulah\b/', '/\bkan\b/', '/\bkapan\b/', '/\bkapankah\b/', '/\bkapanpun\b/', '/\bkarena\b/', '/\bkarenanya\b/', '/\bkasus\b/', '/\bkata\b/',
      '/\bkatakan\b/', '/\bkatakanlah\b/', '/\bkatanya\b/', '/\bke\b/', '/\bkeadaan\b/', '/\bkebetulan\b/', '/\bkecil\b/', '/\bkedua\b/', '/\bkeduanya\b/', '/\bkeinginan\b/', '/\bkelamaan\b/', '/\bkelihatan\b/', '/\bkelihatannya\b/', '/\bkelima\b/',
      '/\bkeluar\b/', '/\bkembali\b/', '/\bkemudian\b/', '/\bkemungkinan\b/', '/\bkemungkinannya\b/', '/\bkenapa\b/', '/\bkepada\b/', '/\bkepadanya\b/', '/\bkesampaian\b/', '/\bkeseluruhan\b/', '/\bkeseluruhannya\b/', '/\bketerlaluan\b/', '/\bketika\b/', '/\bkhususnya\b/',
      '/\bkini\b/', '/\bkinilah\b/', '/\bkira\b/', '/\bkira-kira\b/', '/\bkiranya\b/', '/\bkita\b/', '/\bkitalah\b/', '/\bkok\b/', '/\bkurang\b/', '/\blagi\b/', '/\blagian\b/', '/\blah\b/', '/\blain\b/', '/\blainnya\b/',
      '/\blalu\b/', '/\blama\b/', '/\blamanya\b/', '/\blanjut\b/', '/\blanjutnya\b/', '/\blebih\b/', '/\blewat\b/', '/\blima\b/', '/\bluar\b/', '/\bmacam\b/', '/\bmaka\b/', '/\bmakanya\b/', '/\bmakin\b/', '/\bmalah\b/',
      '/\bmalahan\b/', '/\bmampu\b/', '/\bmampukah\b/', '/\bmana\b/', '/\bmanakala\b/', '/\bmanalagi\b/', '/\bmasa\b/', '/\bmasalah\b/', '/\bmasalahnya\b/', '/\bmasih\b/', '/\bmasihkah\b/', '/\bmasing\b/', '/\bmasing-masing\b/', '/\bmau\b/',
      '/\bmaupun\b/', '/\bmelainkan\b/', '/\bmelakukan\b/', '/\bmelalui\b/', '/\bmelihat\b/', '/\bmelihatnya\b/', '/\bmemang\b/', '/\bmemastikan\b/', '/\bmemberi\b/', '/\bmemberikan\b/', '/\bmembuat\b/', '/\bmemerlukan\b/', '/\bmemihak\b/', '/\bmeminta\b/',
      '/\bmemintakan\b/', '/\bmemisalkan\b/', '/\bmemperbuat\b/', '/\bmempergunakan\b/', '/\bmemperkirakan\b/', '/\bmemperlihatkan\b/', '/\bmempersiapkan\b/', '/\bmempersoalkan\b/', '/\bmempertanyakan\b/', '/\bmempunyai\b/', '/\bmemulai\b/', '/\bmemungkinkan\b/', '/\bmenaiki\b/', '/\bmenambahkan\b/',
      '/\bmenandaskan\b/', '/\bmenanti\b/', '/\bmenanti-nanti\b/', '/\bmenantikan\b/', '/\bmenanya\b/', '/\bmenanyai\b/', '/\bmenanyakan\b/', '/\bmendapat\b/', '/\bmendapatkan\b/', '/\bmendatang\b/', '/\bmendatangi\b/', '/\bmendatangkan\b/', '/\bmenegaskan\b/', '/\bmengakhiri\b/',
      '/\bmengapa\b/', '/\bmengatakan\b/', '/\bmengatakannya\b/', '/\bmengenai\b/', '/\bmengerjakan\b/', '/\bmengetahui\b/', '/\bmenggunakan\b/', '/\bmenghendaki\b/', '/\bmengibaratkan\b/', '/\bmengibaratkannya\b/', '/\bmengingat\b/', '/\bmengingatkan\b/', '/\bmenginginkan\b/', '/\bmengira\b/',
      '/\bmengucapkan\b/', '/\bmengucapkannya\b/', '/\bmengungkapkan\b/', '/\bmenjadi\b/', '/\bmenjawab\b/', '/\bmenjelaskan\b/', '/\bmenuju\b/', '/\bmenunjuk\b/', '/\bmenunjuki\b/', '/\bmenunjukkan\b/', '/\bmenunjuknya\b/', '/\bmenurut\b/', '/\bmenuturkan\b/', '/\bmenyampaikan\b/',
      '/\bmenyangkut\b/', '/\bmenyatakan\b/', '/\bmenyebutkan\b/', '/\bmenyeluruh\b/', '/\bmenyiapkan\b/', '/\bmerasa\b/', '/\bmereka\b/', '/\bmerekalah\b/', '/\bmerupakan\b/', '/\bmeski\b/', '/\bmeskipun\b/', '/\bmeyakini\b/', '/\bmeyakinkan\b/', '/\bminta\b/',
      '/\bmirip\b/', '/\bmisal\b/', '/\bmisalkan\b/', '/\bmisalnya\b/', '/\bmula\b/', '/\bmulai\b/', '/\bmulailah\b/', '/\bmulanya\b/', '/\bmungkin\b/', '/\bmungkinkah\b/', '/\bnah\b/', '/\bnaik\b/', '/\bnamun\b/', '/\bnanti\b/',
      '/\bnantinya\b/', '/\bnyaris\b/', '/\bnyatanya\b/', '/\boleh\b/', '/\bolehnya\b/', '/\bpada\b/', '/\bpadahal\b/', '/\bpadanya\b/', '/\bpak\b/', '/\bpaling\b/', '/\bpanjang\b/', '/\bpantas\b/', '/\bpara\b/', '/\bpasti\b/',
      '/\bpastilah\b/', '/\bpenting\b/', '/\bpentingnya\b/', '/\bper\b/', '/\bpercuma\b/', '/\bperlu\b/', '/\bperlukah\b/', '/\bperlunya\b/', '/\bpernah\b/', '/\bpersoalan\b/', '/\bpertama\b/', '/\bpertama-tama\b/', '/\bpertanyaan\b/', '/\bpertanyakan\b/',
      '/\bpihak\b/', '/\bpihaknya\b/', '/\bpukul\b/', '/\bpula\b/', '/\bpun\b/', '/\bpunya\b/', '/\brasa\b/', '/\brasanya\b/', '/\brata\b/', '/\brupanya\b/', '/\bsaat\b/', '/\bsaatnya\b/', '/\bsaja\b/', '/\bsajalah\b/',
      '/\bsaling\b/', '/\bsama\b/', '/\bsama-sama\b/', '/\bsambil\b/', '/\bsampai\b/', '/\bsampai-sampai\b/', '/\bsampaikan\b/', '/\bsana\b/', '/\bsangat\b/', '/\bsangatlah\b/', '/\bsatu\b/', '/\bsaya\b/', '/\bsayalah\b/', '/\bse\b/',
      '/\bsebab\b/', '/\bsebabnya\b/', '/\bsebagai\b/', '/\bsebagaimana\b/', '/\bsebagainya\b/', '/\bsebagian\b/', '/\bsebaik\b/', '/\bsebaik-baiknya\b/', '/\bsebaiknya\b/', '/\bsebaliknya\b/', '/\bsebanyak\b/', '/\bsebegini\b/', '/\bsebegitu\b/', '/\bsebelum\b/',
      '/\bsebelumnya\b/', '/\bsebenarnya\b/', '/\bseberapa\b/', '/\bsebesar\b/', '/\bsebetulnya\b/', '/\bsebisanya\b/', '/\bsebuah\b/', '/\bsebut\b/', '/\bsebutlah\b/', '/\bsebutnya\b/', '/\bsecara\b/', '/\bsecukupnya\b/', '/\bsedang\b/', '/\bsedangkan\b/',
      '/\bsedemikian\b/', '/\bsedikit\b/', '/\bsedikitnya\b/', '/\bseenaknya\b/', '/\bsegala\b/', '/\bsegalanya\b/', '/\bsegera\b/', '/\bseharusnya\b/', '/\bsehingga\b/', '/\bseingat\b/', '/\bsejak\b/', '/\bsejauh\b/', '/\bsejenak\b/', '/\bsejumlah\b/',
      '/\bsekadar\b/', '/\bsekadarnya\b/', '/\bsekali\b/', '/\bsekali-kali\b/', '/\bsekalian\b/', '/\bsekaligus\b/', '/\bsekalipun\b/', '/\bsekarang\b/', '/\bsekarang\b/', '/\bsekecil\b/', '/\bseketika\b/', '/\bsekiranya\b/', '/\bsekitar\b/', '/\bsekitarnya\b/',
      '/\bsekurang-kurangnya\b/', '/\bsekurangnya\b/', '/\bsela\b/', '/\bselain\b/', '/\bselaku\b/', '/\bselalu\b/', '/\bselama\b/', '/\bselama-lamanya\b/', '/\bselamanya\b/', '/\bselanjutnya\b/', '/\bseluruh\b/', '/\bseluruhnya\b/', '/\bsemacam\b/', '/\bsemakin\b/',
      '/\bsemampu\b/', '/\bsemampunya\b/', '/\bsemasa\b/', '/\bsemasih\b/', '/\bsemata\b/', '/\bsemata-mata\b/', '/\bsemaunya\b/', '/\bsementara\b/', '/\bsemisal\b/', '/\bsemisalnya\b/', '/\bsempat\b/', '/\bsemua\b/', '/\bsemuanya\b/', '/\bsemula\b/',
      '/\bsendiri\b/', '/\bsendirian\b/', '/\bsendirinya\b/', '/\bseolah\b/', '/\bseolah-olah\b/', '/\bseorang\b/', '/\bsepanjang\b/', '/\bsepantasnya\b/', '/\bsepantasnyalah\b/', '/\bseperlunya\b/', '/\bseperti\b/', '/\bsepertinya\b/', '/\bsepihak\b/', '/\bsering\b/',
      '/\bseringnya\b/', '/\bserta\b/', '/\bserupa\b/', '/\bsesaat\b/', '/\bsesama\b/', '/\bsesampai\b/', '/\bsesegera\b/', '/\bsesekali\b/', '/\bseseorang\b/', '/\bsesuatu\b/', '/\bsesuatunya\b/', '/\bsesudah\b/', '/\bsesudahnya\b/', '/\bsetelah\b/',
      '/\bsetempat\b/', '/\bsetengah\b/', '/\bseterusnya\b/', '/\bsetiap\b/', '/\bsetiba\b/', '/\bsetibanya\b/', '/\bsetidak-tidaknya\b/', '/\bsetidaknya\b/', '/\bsetinggi\b/', '/\bseusai\b/', '/\bsewaktu\b/', '/\bsiap\b/', '/\bsiapa\b/', '/\bsiapakah\b/',
      '/\bsiapapun\b/', '/\bsini\b/', '/\bsinilah\b/', '/\bsoal\b/', '/\bsoalnya\b/', '/\bsuatu\b/', '/\bsudah\b/', '/\bsudahkah\b/', '/\bsudahlah\b/', '/\bsupaya\b/', '/\btadi\b/', '/\btadinya\b/', '/\btahu\b/', '/\btahun\b/',
      '/\btak\b/', '/\btambah\b/', '/\btambahnya\b/', '/\btampak\b/', '/\btampaknya\b/', '/\btandas\b/', '/\btandasnya\b/', '/\btanpa\b/', '/\btanya\b/', '/\btanyakan\b/', '/\btanyanya\b/', '/\btapi\b/', '/\btegas\b/', '/\btegasnya\b/',
      '/\btelah\b/', '/\btempat\b/', '/\btengah\b/', '/\btentang\b/', '/\btentu\b/', '/\btentulah\b/', '/\btentunya\b/', '/\btepat\b/', '/\bterakhir\b/', '/\bterasa\b/', '/\bterbanyak\b/', '/\bterdahulu\b/', '/\bterdapat\b/', '/\bterdiri\b/',
      '/\bterhadap\b/', '/\bterhadapnya\b/', '/\bteringat\b/', '/\bteringat-ingat\b/', '/\bterjadi\b/', '/\bterjadilah\b/', '/\bterjadinya\b/', '/\bterkira\b/', '/\bterlalu\b/', '/\bterlebih\b/', '/\bterlihat\b/', '/\btermasuk\b/', '/\bternyata\b/',
      '/\btersampaikan\b/', '/\btersebut\b/', '/\btersebutlah\b/', '/\btertentu\b/', '/\btertuju\b/', '/\bterus\b/', '/\bterutama\b/', '/\btetap\b/', '/\btetapi\b/', '/\btiap\b/', '/\btiba\b/', '/\btiba-tiba\b/', '/\btidak\b/', '/\btidakkah\b/',
      '/\btidaklah\b/', '/\btiga\b/', '/\btinggi\b/', '/\btoh\b/', '/\btunjuk\b/', '/\bturut\b/', '/\btutur\b/', '/\btuturnya\b/', '/\bucap\b/', '/\bucapnya\b/', '/\bujar\b/', '/\bujarnya\b/', '/\bumum\b/', '/\bumumnya\b/',
      '/\bungkap\b/', '/\bungkapnya\b/', '/\buntuk\b/', '/\busah\b/', '/\busai\b/', '/\bwaduh\b/', '/\bwah\b/', '/\bwahai\b/', '/\bwaktu\b/', '/\bwaktunya\b/', '/\bwalau\b/', '/\bwalaupun\b/', '/\bwong\b/', '/\byaitu\b/',
      '/\byakin\b/', '/\byakni\b/', '/\byang\b/',
      //kata tambahan
      '/\bdok\b/', '/\bdikasih\b/', '/\bya\b/', '/\bnih\b/', '/\bmalam\b/', '/\bmacamnya\b/', '/\bkemarin\b/', '/\btolong\b/', '/\btugas\b/', '/\bsekolah\b/', '/\bsuhu\b/', '/\bc\b/', '/\basalammualaikum\b/', '/\bsri\b/', '/\beh\b/',
      '/\bmelanjutkan\b/', '/\bkunjung\b/', '/\bsembuh\b/', '/\bapakakah\b/', '/\bmohon\b/', '/\bpendapatnya\b/', '/\bsediaan\b/', '/\bo\b/', '/\bhabis\b/', '/\bdisertai\b/', '/\bassalamualaikum\b/', '/\bsuka\b/', '/\banjuran\b/',
      '/\bberobat\b/', '/\brs\b/', '/\bdisana\b/', '/\bselesai\b/', '/\bbeda\b/', '/\bnama\b/', '/\bmohon\b/', '/\bterimakasih\b/', '/\bhalo\b/', '/\bumur\b/', '/\bpekan\b/',
      '/\bkayak\b/', '/\btuh\b/', '/\bmenerus\b/', '/\bkenanapa\b/', '/\bkalinya\b/', '/\bkena\b/', '/\bteman\b/', '/\bdokter\b/', '/\bbeliau\b/', '/\bsemoga\b/', '/\bmembantu\b/', '/\bsolve\b/', '/\bproblem\b/', '/\bselamat \b/', '/\bpagi\b/', '/\bterima\b/', '/\bkasih\b/', '/\baamiin\b/', '/\bjelasin\b/', 
      '/\bkadang\b/', '/\bx\b/', '/\baja\b/', '/\bgara\b/', '/\bbikin\b/', '/\bhallo\b/', '/\bmg\b/', '/\bselamat\b/', '/\bhi\b/', '/\bdr\b/', '/\bpas\b/', '/\bpermisi\b/', '/\bliar\b/', '/\bfarida\b/', '/\btannya\b/', '/\bassalamu\b/', '/\balaikum\b/', '/\bwr\b/', '/\bwb\b/', '/\bmempengaruhi\b/', '/\bwassalam\b/', '/\bdll\b/', '/\bdisalah\b/', '/\bhai\b/',
      '/\bne\b/', '/\bsekian\b/', '/\bsore\b/', '/\bsiang\b/', '/\bmakasih\b/', '/\bgitu\b/', '/\bberes\b/', '/\bnya\b/', '/\bjawab\b/',  '/\bkemana\b/', '/\bnapa\b/', '/\bbarulah\b/', '/\bcari\b/', '/\bgoogle\b/', '/\bbilang\b/', '/\btelusuri\b/', '/\batik\b/', '/\bdevita\b/', '/\billa\b/', '/\bkah\b/', '/\bkena\b/',
      '/\blia\b/', '/\belda\b/', '/\btrimakasih\b/', 
      /*
      '/\b+\b/',
      */
    );
      foreach ($astoplist as $i => $value) {
          $text = preg_replace($astoplist[$i], "", $text);
      }

      // Stemming
      $text = preg_replace('/\bpemeriksa\b/', 'periksa', $text);
      $text = preg_replace('/\bdiobati\b/', 'obat', $text);
      $text = preg_replace('/\btekanan\b/', 'tekan', $text);
      $text = preg_replace('/\bdialami\b/', 'alami', $text);
      $text = preg_replace('/\bpemeriksaan\b/', 'periksa', $text);
      $text = preg_replace('/\bdiuap\b/', 'uap', $text);
      $text = preg_replace('/\bobatnya\b/', 'obat', $text);
      $text = preg_replace('/\bterbangun\b/', 'bangun', $text);
      $text = preg_replace('/\bdigerakkan\b/', 'gerak', $text);
      $text = preg_replace('/\bterbuka\b/', 'buka', $text);
      $text = preg_replace('/\bberbahaya\b/', 'bahaya', $text);
      $text = preg_replace('/\bteratur\b/', 'atur', $text);
      $text = preg_replace('/\bberasa\b/', 'rasa', $text);
      $text = preg_replace('/\bterengah\b/', 'engah', $text);
      $text = preg_replace('/\bmenarik\b/', 'tarik', $text);
      $text = preg_replace('/\bturunan\b/', 'turun', $text);
      $text = preg_replace('/\btertutup\b/', 'tutup', $text);
      $text = preg_replace('/\bkemasukan\b/', 'masuk', $text);
      $text = preg_replace('/\bsolusinya\b/', 'solusi', $text);
      $text = preg_replace('/\bmemiliki\b/', 'milik', $text);
      $text = preg_replace('/\bintensitasnya\b/', 'intensitas', $text);
      $text = preg_replace('/\bberaktivitas\b/', 'aktivitas', $text);
      $text = preg_replace('/\bberbeda\b/', 'beda', $text);
      $text = preg_replace('/\bduanya\b/', 'dua', $text);
      $text = preg_replace('/\btersumbat\b/', 'sumbat', $text);
      $text = preg_replace('/\bkeseringan\b/', 'sering', $text);
      $text = preg_replace('/\bberbalik\b/', 'balik', $text);
      $text = preg_replace('/\bmengatasi\b/', 'atasi', $text);
      $text = preg_replace('/\bmengkonsumsi\b/', 'konsumsi', $text);
      $text = preg_replace('/\bmenyembuhkannya\b/', 'sembuh', $text);
      $text = preg_replace('/\bpimpinan\b/', 'pimpin', $text);
      $text = preg_replace('/\bpenyakit\b/', 'sakit', $text);
      $text = preg_replace('/\bpekerjaan\b/', 'kerja', $text);
      $text = preg_replace('/\bruangan\b/', 'ruang', $text);
      $text = preg_replace('/\bterkena\b/', 'kena', $text);
      $text = preg_replace('/\bmengalami\b/', 'alami', $text);
      $text = preg_replace('/\bpermasalahan\b/', 'masalah', $text);
      $text = preg_replace('/\bhidungnya\b/', 'hidung', $text);
      $text = preg_replace('/\bmenyumbat\b/', 'sumbat', $text);
      $text = preg_replace('/\bpanduannya\b/', 'panduan', $text);
      $text = preg_replace('/\bperokok\b/', 'rokok', $text);
      $text = preg_replace('/\bketurunan\b/', 'turun', $text);
      $text = preg_replace('/\bkakeknya\b/', 'kakek', $text);
      $text = preg_replace('/\bberdahak\b/', 'dahak', $text);
      $text = preg_replace('/\bkumatnya\b/', 'kumat', $text);
      $text = preg_replace('/\befeknya\b/', 'efek', $text);
      $text = preg_replace('/\btenggorokan\b/', 'tenggorok', $text);
      $text = preg_replace('/\btenggorokannya\b/', 'tenggorok', $text);
      $text = preg_replace('/\bterbakar\b/', 'bakar', $text);
      $text = preg_replace('/\bmakanan\b/', 'makan', $text);
      $text = preg_replace('/\bminuman\b/', 'minum', $text);
      $text = preg_replace('/\bdiminumkan\b/', 'minum', $text);
      $text = preg_replace('/\bpenggunaan\b/', 'guna', $text);
      $text = preg_replace('/\bmengidap\b/', 'idap', $text);
      $text = preg_replace('/\bmengidapkan\b/', 'idap', $text);
      $text = preg_replace('/\bbernafas\b/', 'nafas', $text);
      $text = preg_replace('/\bpengobatannya\b/', 'obat', $text);
      $text = preg_replace('/\bpengobatan\b/', 'obat', $text);
      $text = preg_replace('/\bberumur\b/', 'umur', $text);
      $text = preg_replace('/\bpenderita\b/', 'derita', $text);
      $text = preg_replace('/\bberkeluarga\b/', 'keluarga', $text);
      $text = preg_replace('/\bdigenggam\b/', 'genggam', $text);
      $text = preg_replace('/\bdilepas\b/', 'lepas', $text);
      $text = preg_replace('/\bbakaran\b/', 'bakar', $text);
      $text = preg_replace('/\bmenyengat\b/', 'sengat', $text);
      $text = preg_replace('/\bkandungan\b/', 'kandung', $text);
      $text = preg_replace('/\bdiiris\b/', 'iris', $text);
      $text = preg_replace('/\bhentikan\b/', 'henti', $text);
      $text = preg_replace('/\bterhentikan\b/', 'henti', $text);
      $text = preg_replace('/\blanjutkan\b/', 'lanjut', $text);
      $text = preg_replace('/\bbersifat\b/', 'sifat', $text);
      $text = preg_replace('/\bamankah\b/', 'aman', $text);
      $text = preg_replace('/\bjawabannya\b/', 'jawaban', $text);
      $text = preg_replace('/\bjawaban\b/', 'jawab', $text);
      $text = preg_replace('/\bpemijatan\b/', 'pijat', $text);
      $text = preg_replace('/\bmenyembuhkan\b/', 'sembuh', $text);
      $text = preg_replace('/\bmengonsumsi\b/', 'konsumsi', $text);
      $text = preg_replace('/\bmengurangi\b/', 'kurang', $text);
      $text = preg_replace('/\bmerasakan\b/', 'rasa', $text);
      $text = preg_replace('/\bkepikiran\b/', 'pikir', $text);
      $text = preg_replace('/\bpikiran\b/', 'pikir', $text);
      $text = preg_replace('/\bkeesokan\b/', 'esok', $text);
      $text = preg_replace('/\bharinya\b/', 'hari', $text);
      $text = preg_replace('/\bberulang\b/', 'ulang', $text);
      $text = preg_replace('/\bkejadiannya\b/', 'jadi', $text);
      $text = preg_replace('/\bsehabis\b/', 'habis', $text);
      $text = preg_replace('/\bkesehatan\b/', 'sehat', $text);
      $text = preg_replace('/\bkelelahan\b/', 'lelah', $text);
      $text = preg_replace('/\bmencegahnya\b/', 'cegah', $text);
      $text = preg_replace('/\bnafasnya\b/', 'nafas', $text);
      $text = preg_replace('/\bberbunyi\b/', 'bunyi', $text);
      $text = preg_replace('/\bmengeluarkan\b/', 'keluar', $text);
      $text = preg_replace('/\bpembengkakan\b/', 'bengkak', $text);
      $text = preg_replace('/\blehernya\b/', 'leher', $text);
      $text = preg_replace('/\bdihasilkan\b/', 'hasil', $text);
      $text = preg_replace('/\bpenjelasannya\b/', 'jelas', $text);
      $text = preg_replace('/\bdipaksa\b/', 'paksa', $text);
      $text = preg_replace('/\bmenderita\b/', 'derita', $text);
      $text = preg_replace('/\bpetunjuk\b/', 'tunjuk', $text);
      $text = preg_replace('/\bjenisnya\b/', 'jenis', $text);
      $text = preg_replace('/\bmembeli\b/', 'beli', $text);
      $text = preg_replace('/\bpenggunaannya\b/', 'guna', $text);
      $text = preg_replace('/\bpenggunaan\b/', 'guna', $text);
      $text = preg_replace('/\bsehubungan\b/', 'hubung', $text);
      $text = preg_replace('/\bdiderita\b/', 'derita', $text);
      $text = preg_replace('/\bterdengar\b/', 'dengar', $text);
      $text = preg_replace('/\bdisedot\b/', 'sedot', $text);
      $text = preg_replace('/\bsuaranya\b/', 'suara', $text);
      $text = preg_replace('/\blakukan\b/', 'laku', $text);
      $text = preg_replace('/\blendirnya\b/', 'lendir', $text);
      $text = preg_replace('/\bketarik\b/', 'tarik', $text);
      $text = preg_replace('/\bbayinya\b/', 'bayi', $text);
      $text = preg_replace('/\bkedalam\b/', 'dalam', $text);
      $text = preg_replace('/\bpenyedot\b/', 'sedot', $text);
      $text = preg_replace('/\bbatuknya\b/', 'batuk', $text);
      $text = preg_replace('/\bterdekat\b/', 'dekat', $text);
      $text = preg_replace('/\bbereaksi\b/', 'reaksi', $text);
      $text = preg_replace('/\bdiperiksa\b/', 'periksa', $text);
      $text = preg_replace('/\bbermasalah\b/', 'masalah', $text);
      $text = preg_replace('/\bdivonis\b/', 'vonis', $text);
      $text = preg_replace('/\bdibagian\b/', 'bagian', $text);
      $text = preg_replace('/\bkesulitan\b/', 'sulit', $text);
      $text = preg_replace('/\bdiikuti\b/', 'ikut', $text);
      $text = preg_replace('/\btahunya\b/', 'tahu', $text);
      $text = preg_replace('/\bpileknya\b/', 'pilek', $text);
      $text = preg_replace('/\bkakaknya\b/', 'kakak', $text);
      $text = preg_replace('/\badiknya\b/', 'adik', $text);
      $text = preg_replace('/\bmemakai\b/', 'pakai', $text);
      $text = preg_replace('/\bpenanganannya\b/', 'penanganan', $text);
      $text = preg_replace('/\bberdebar\b/', 'debar', $text);
      $text = preg_replace('/\bmeminum\b/', 'minum', $text);
      $text = preg_replace('/\bberdetak\b/', 'detak', $text);
      $text = preg_replace('/\bdikonsumsi\b/', 'konsumsi', $text);
      $text = preg_replace('/\bberhadapan\b/', 'hadap', $text);
      $text = preg_replace('/\bmenyusui\b/', 'susu', $text);
      $text = preg_replace('/\bdibawah\b/', 'bawah', $text);
      $text = preg_replace('/\bberdebu\b/', 'debu', $text);
      $text = preg_replace('/\blingkungan\b/', 'lingkung', $text);
      $text = preg_replace('/\bmenghabiskan\b/', 'habis', $text);
      $text = preg_replace('/\bdikantor\b/', 'kantor', $text);
      $text = preg_replace('/\baktifitas\b/', 'aktivitas', $text);
      $text = preg_replace('/\bsehari\b/', 'hari', $text);
      $text = preg_replace('/\blahiran\b/', 'lahir', $text);
      $text = preg_replace('/\bdicampur\b/', 'campur', $text);
      $text = preg_replace('/\bklimaksnya\b/', 'klimaks', $text);
      $text = preg_replace('/\bbersamaan\b/', 'sama', $text);
      $text = preg_replace('/\bmengelus\b/', 'ngelus', $text);
      $text = preg_replace('/\bmenghirup\b/', 'hirup', $text);
      $text = preg_replace('/\bdikeluarkan\b/', 'keluar', $text);
      $text = preg_replace('/\bsarannya\b/', 'saran', $text);
      $text = preg_replace('/\bkeseharian\b/', 'hari', $text);
      $text = preg_replace('/\bcampuran\b/', 'campur', $text);
      $text = preg_replace('/\bserangan\b/', 'serang', $text);
      $text = preg_replace('/\bdirumah\b/', 'rumah', $text);
      $text = preg_replace('/\bmenunda\b/', 'tunda', $text);
      $text = preg_replace('/\bkebiasaan\b/', 'biasa', $text);
      $text = preg_replace('/\bmemakan\b/', 'makan', $text);
      $text = preg_replace('/\bdinebules\b/', 'nebules', $text);
      $text = preg_replace('/\bsaluran\b/', 'salur', $text);
      $text = preg_replace('/\bpernafasan\b/', 'napas', $text);
      $text = preg_replace('/\bdiproduksi\b/', 'produksi', $text);
      $text = preg_replace('/\bberlebih\b/', 'lebih', $text);
      $text = preg_replace('/\bmenyebabkan\b/', 'sebab', $text);
      $text = preg_replace('/\bkerusakan\b/', 'rusak', $text);
      $text = preg_replace('/\bekspirasinya\b/', 'ekspirasi', $text);
      $text = preg_replace('/\bditunggu\b/', 'tunggu', $text);
      $text = preg_replace('/\bmendadak\b/', 'dadak', $text);
      $text = preg_replace('/\bberhubungan\b/', 'hubung', $text);
      $text = preg_replace('/\bberusia\b/', 'usia', $text);
      $text = preg_replace('/\bkeluhan\b/', 'keluh', $text);
      $text = preg_replace('/\bdokternya\b/', 'dokter', $text);
      $text = preg_replace('/\bpernapasan\b/', 'napas', $text);
      $text = preg_replace('/\bketiga\b/', 'tiga', $text);
      $text = preg_replace('/\bseumur\b/', 'umur', $text);
      $text = preg_replace('/\bdijual\b/', 'jual', $text);
      $text = preg_replace('/\bkecelakaan\b/', 'celaka', $text);
      $text = preg_replace('/\bsakitnya\b/', 'sakit', $text);
      $text = preg_replace('/\bnafas\b/', 'napas', $text);
      $text = preg_replace('/\bberpikir\b/', 'pikir', $text);
      $text = preg_replace('/\bmenembak\b/', 'tembak', $text);
      $text = preg_replace('/\bkehamilan\b/', 'hamil', $text);
      $text = preg_replace('/\bmangi\b/', 'mengi', $text);
      $text = preg_replace('/\btahunan\b/', 'tahun', $text);
      $text = preg_replace('/\bmelamar\b/', 'lamar', $text);
      $text = preg_replace('/\bperusahaan\b/', 'usaha', $text);
      $text = preg_replace('/\bmencium\b/', 'cium', $text);
      $text = preg_replace('/\bdisuruh\b/', 'suruh', $text);
      $text = preg_replace('/\bronsenya\b/', 'ronsen', $text);
      $text = preg_replace('/\bronsennya\b/', 'ronsen', $text);
      $text = preg_replace('/\bkedinginan\b/', 'dingin', $text);
      $text = preg_replace('/\bstress\b/', 'stres', $text);
      $text = preg_replace('/\bmenangis\b/', 'nangis', $text);
      $text = preg_replace('/\bmengambil\b/', 'ambil', $text);
      $text = preg_replace('/\bditenangkan\b/', 'tenang', $text);
      $text = preg_replace('/\bmemeluk\b/', 'peluk', $text);
      $text = preg_replace('/\bketerangan\b/', 'terang', $text);
      $text = preg_replace('/\bpenyembuh\b/', 'sembuh', $text);
      $text = preg_replace('/\bmenjalar\b/', 'jalar', $text);
      $text = preg_replace('/\bkekulit\b/', 'kulit', $text);
      $text = preg_replace('/\btandanya\b/', 'tanda', $text);
      $text = preg_replace('/\btepatnya\b/', 'tepat', $text);
      $text = preg_replace('/\bmembesar\b/', 'besar', $text);
      $text = preg_replace('/\bhubungannya\b/', 'hubung', $text);
      $text = preg_replace('/\bkambuhnya\b/', 'kambuh', $text);
      $text = preg_replace('/\btindakan\b/', 'tindak', $text);
      $text = preg_replace('/\bsemalaman\b/', 'malam', $text);
      $text = preg_replace('/\bdosisnya\b/', 'dosis', $text);
      $text = preg_replace('/\bdikurangin\b/', 'kurang', $text);
      $text = preg_replace('/\bmenimbulkan\b/', 'timbul', $text);
      $text = preg_replace('/\bditambah\b/', 'tambah', $text);
      $text = preg_replace('/\bdibawa\b/', 'bawa', $text);
      $text = preg_replace('/\bdirujuk\b/', 'rujuk', $text);
      $text = preg_replace('/\bmendiagnosa\b/', 'diagnosa', $text);
      $text = preg_replace('/\bparunya\b/', 'paru', $text);
      $text = preg_replace('/\bmengurus\b/', 'urus', $text);
      $text = preg_replace('/\bresepnya\b/', 'resep', $text);
      $text = preg_replace('/\bmengajar\b/', 'ajar', $text);
      $text = preg_replace('/\bpencerahannya\b/', 'cerah', $text);
      $text = preg_replace('/\bterpapar\b/', 'papar', $text);
      $text = preg_replace('/\bbernapas\b/', 'napas', $text);
      $text = preg_replace('/\bterbatas\b/', 'batas', $text);
      $text = preg_replace('/\bberpengaruh\b/', 'pengaruh', $text);
      $text = preg_replace('/\banjurkan\b/', 'anjur', $text);
      $text = preg_replace('/\bdisekitar\b/', 'sekitar', $text);
      $text = preg_replace('/\bmengobati\b/', 'obat', $text);
      $text = preg_replace('/\bberefek\b/', 'efek', $text);
      $text = preg_replace('/\bpengguna\b/', 'guna', $text);
      $text = preg_replace('/\bberhenti\b/', 'henti', $text);
      $text = preg_replace('/\bdipakai\b/', 'pakai', $text);
      $text = preg_replace('/\bberbulan\b/', 'bulan', $text);
      $text = preg_replace('/\bperiksakan\b/', 'periksa', $text);
      $text = preg_replace('/\bmengantisipasinya\b/', 'antisipasi', $text);
      $text = preg_replace('/\bpengencer\b/', 'encer', $text);
      $text = preg_replace('/\bdisaat\b/', 'saat', $text);
      $text = preg_replace('/\bmenghambat\b/', 'hambat', $text);
      $text = preg_replace('/\bpengidap\b/', 'idap', $text);
      $text = preg_replace('/\bbawaan\b/', 'bawa', $text);
      $text = preg_replace('/\bredanya\b/', 'reda', $text);
      $text = preg_replace('/\bapoteknya\b/', 'apotek', $text);
      $text = preg_replace('/\bdisuatu\b/', 'suatu', $text);
      $text = preg_replace('/\bmemasuki\b/', 'masuk', $text);
      $text = preg_replace('/\bkedokteran\b/', 'dokter', $text);
      $text = preg_replace('/\bsoalnyakan\b/', 'soal', $text);
      $text = preg_replace('/\bfisiknya\b/', 'fisik', $text);
      $text = preg_replace('/\bpengaruhnya\b/', 'pengaruh', $text);
      $text = preg_replace('/\bberfikir\b/', 'pikir', $text);
      $text = preg_replace('/\bberpikir\b/', 'pikir', $text);
      $text = preg_replace('/\bsekalinya\b/', 'kali', $text);
      $text = preg_replace('/\bsekali\b/', 'kali', $text);
      $text = preg_replace('/\bberhari\b/', 'hari', $text);
      $text = preg_replace('/\bperubahan\b/', 'ubah', $text);
      $text = preg_replace('/\bpenyebab\b/', 'sebab', $text);
      $text = preg_replace('/\basmanya\b/', 'asma', $text);
      $text = preg_replace('/\blebihnya\b/', 'lebih', $text);
      $text = preg_replace('/\bterkadang\b/', 'kadang', $text);
      $text = preg_replace('/\bpenyebabnya\b/', 'sebab', $text);
      $text = preg_replace('/\bpenanggulanganya\b/', 'tanggulang', $text);
      $text = preg_replace('/\bpenanggulangan\b/', 'tanggulang', $text);
      $text = preg_replace('/\bmencegah\b/', 'cegah', $text);
      $text = preg_replace('/\bpemicu\b/', 'picu', $text);
      $text = preg_replace('/\bpemakain\b/', 'pakai', $text);
      $text = preg_replace('/\bberkurang\b/', 'kurang', $text);
      $text = preg_replace('/\bmengganggu\b/', 'ganggu', $text);
      $text = preg_replace('/\btiduran\b/', 'tidur', $text);
      $text = preg_replace('/\bterpotong\b/', 'potong', $text);
      $text = preg_replace('/\bmengatasinya\b/', 'atasi', $text);
      $text = preg_replace('/\bsesaknya\b/', 'sesak', $text);
      $text = preg_replace('/\bsetahun\b/', 'tahun', $text);
      $text = preg_replace('/\bmelahirkan\b/', 'lahir', $text);
      $text = preg_replace('/\btergantung\b/', 'gantung', $text);
      $text = preg_replace('/\bkedokter\b/', 'dokter', $text);
      $text = preg_replace('/\bpnderita\b/', 'derita', $text);
      $text = preg_replace('/\buntk\b/', 'untuk', $text);
      $text = preg_replace('/\bmenginjak\b/', 'injak', $text);
      $text = preg_replace('/\btertidur\b/', 'tidur', $text);
      $text = preg_replace('/\bperhatiannya\b/', 'perhati', $text);
      $text = preg_replace('/\bdikemudian\b/', 'kemudian', $text);
      $text = preg_replace('/\bbantuannya\b/', 'bantuan', $text);

      $text = trim($text);
    return $text;


    $bobot_kata = array();
}
?>
