@extends('users.usermaster')

@section('section')

  <div class="container-fluid padding20">
      <div class="row">
        <div class="col-sm-10 offset-sm-1">
          <div class="card">
            <div class="card-header">
              <h3><strong>{{ (__('Prices')) }}</strong></h3>
            </div>
            <div class="card-body">
              <iframe src="{{ asset('images/docs/Privacy policy.pdf') }}" width="100%" height="1000px" /></iframe>
              {{-- <div style="top:0px;width:595px;height:842px;overflow:hidden">
                  <div style="position:absolute;left:0px;top:0px">
                  <img src="{{ asset('images/siteimages/priceback.jpg') }}" width=595 height=842></div>
                  <div style="position:absolute;left:56.64px;top:71.52px" class="cls_021"><span class="cls_021">LISTINO PREZZI GIORNALIERO</span></div>
                  <div style="position:absolute;left:68.04px;top:98.40px" class="cls_003"><span class="cls_003">BASSA STAGIONE</span></div>
                  <div style="position:absolute;left:183.96px;top:98.40px" class="cls_003"><span class="cls_003">GIORNALIERO</span></div>
                  <div style="position:absolute;left:346.32px;top:98.40px" class="cls_003"><span class="cls_003">ALTA STAGIONE</span></div>
                  <div style="position:absolute;left:459.36px;top:98.40px" class="cls_003"><span class="cls_003">GIORNALIERO</span></div>
                  <div style="position:absolute;left:63.48px;top:120.12px" class="cls_003"><span class="cls_003">Dall’apertura al 11/06</span></div>
                  <div style="position:absolute;left:166.08px;top:120.12px" class="cls_003"><span class="cls_003">Dal 13/09 alla chiusura</span></div>
                  <div style="position:absolute;left:361.32px;top:120.12px" class="cls_003"><span class="cls_003">DAL 12/06</span></div>
                  <div style="position:absolute;left:472.80px;top:120.12px" class="cls_003"><span class="cls_003">Al 12/09</span></div>
                  <div style="position:absolute;left:88.80px;top:134.52px" class="cls_005"><span class="cls_005">1 Adulto</span></div>
                  <div style="position:absolute;left:202.92px;top:134.52px" class="cls_005"><span class="cls_005">28,00</span></div>
                  <div style="position:absolute;left:365.40px;top:135.60px" class="cls_009"><span class="cls_009">1 Adulto</span></div>
                  <div style="position:absolute;left:479.52px;top:135.60px" class="cls_009"><span class="cls_009">31,00</span></div>
                  <div style="position:absolute;left:88.80px;top:164.88px" class="cls_005"><span class="cls_005">2 Adulto</span></div>
                  <div style="position:absolute;left:202.92px;top:164.88px" class="cls_005"><span class="cls_005">35,50</span></div>
                  <div style="position:absolute;left:365.40px;top:165.96px" class="cls_011"><span class="cls_011">2 Adulto</span></div>
                  <div style="position:absolute;left:479.52px;top:165.96px" class="cls_011"><span class="cls_011">40,00</span></div>
                  <div style="position:absolute;left:88.80px;top:195.24px" class="cls_005"><span class="cls_005">3 Adulto</span></div>
                  <div style="position:absolute;left:202.92px;top:195.24px" class="cls_005"><span class="cls_005">43,00</span></div>
                  <div style="position:absolute;left:365.40px;top:196.44px" class="cls_009"><span class="cls_009">3 Adulto</span></div>
                  <div style="position:absolute;left:479.52px;top:196.44px" class="cls_009"><span class="cls_009">49,00</span></div>
                  <div style="position:absolute;left:88.80px;top:225.12px" class="cls_012"><span class="cls_012">4 Adulto</span></div>
                  <div style="position:absolute;left:202.92px;top:225.12px" class="cls_012"><span class="cls_012">50,50</span></div>
                  <div style="position:absolute;left:365.40px;top:226.20px" class="cls_011"><span class="cls_011">4 Adulto</span></div>
                  <div style="position:absolute;left:479.52px;top:226.20px" class="cls_011"><span class="cls_011">56,00</span></div>
                  <div style="position:absolute;left:56.64px;top:258.12px" class="cls_021"><span class="cls_021">LISTINO ABBONAMENTI</span></div>
                  <div style="position:absolute;left:161.88px;top:276.48px" class="cls_005"><span class="cls_005">SETTORE Q</span></div>
                  <div style="position:absolute;left:495.24px;top:276.48px" class="cls_005"><span class="cls_005">SETTORE X</span></div>
                  <div style="position:absolute;left:157.80px;top:288.00px" class="cls_005"><span class="cls_005">Lato S. Libera</span></div>
                  <div style="position:absolute;left:229.56px;top:288.00px" class="cls_005"><span class="cls_005">SETTORE R</span></div>
                  <div style="position:absolute;left:297.12px;top:288.00px" class="cls_005"><span class="cls_005">SETTORE S</span></div>
                  <div style="position:absolute;left:364.80px;top:288.00px" class="cls_005"><span class="cls_005">SETTORE T</span></div>
                  <div style="position:absolute;left:428.28px;top:288.00px" class="cls_005"><span class="cls_005">SETTORE V</span></div>
                  <div style="position:absolute;left:492.12px;top:288.12px" class="cls_014"><span class="cls_014">Lato Negombo</span></div>
                  <div style="position:absolute;left:56.64px;top:310.80px" class="cls_005"><span class="cls_005">1° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:310.80px" class="cls_005"><span class="cls_005">1 Adulto</span></div>
                  <div style="position:absolute;left:194.16px;top:310.80px" class="cls_015"><span class="cls_015">950,00</span></div>
                  <div style="position:absolute;left:249.72px;top:310.80px" class="cls_015"><span class="cls_015">1.000,00</span></div>
                  <div style="position:absolute;left:320.64px;top:310.80px" class="cls_015"><span class="cls_015">1.050,00</span></div>
                  <div style="position:absolute;left:384.36px;top:310.80px" class="cls_015"><span class="cls_015">1.100,00</span></div>
                  <div style="position:absolute;left:448.20px;top:310.80px" class="cls_015"><span class="cls_015">1.150,00</span></div>
                  <div style="position:absolute;left:517.80px;top:310.80px" class="cls_015"><span class="cls_015">1.200,00</span></div>
                  <div style="position:absolute;left:56.64px;top:332.52px" class="cls_012"><span class="cls_012">1° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:332.52px" class="cls_012"><span class="cls_012">2 Adulto</span></div>
                  <div style="position:absolute;left:185.88px;top:332.52px" class="cls_015"><span class="cls_015">1.200,00</span></div>
                  <div style="position:absolute;left:249.72px;top:332.52px" class="cls_015"><span class="cls_015">1.250,00</span></div>
                  <div style="position:absolute;left:320.64px;top:332.52px" class="cls_015"><span class="cls_015">1.300,00</span></div>
                  <div style="position:absolute;left:384.36px;top:332.52px" class="cls_012"><span class="cls_012">1.350,00</span></div>
                  <div style="position:absolute;left:448.20px;top:332.52px" class="cls_012"><span class="cls_012">1.400,00</span></div>
                  <div style="position:absolute;left:517.80px;top:332.52px" class="cls_012"><span class="cls_012">1.450,00</span></div>
                  <div style="position:absolute;left:56.64px;top:354.24px" class="cls_005"><span class="cls_005">1° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:354.24px" class="cls_005"><span class="cls_005">3 Adulto</span></div>
                  <div style="position:absolute;left:185.88px;top:354.24px" class="cls_015"><span class="cls_015">1.400,00</span></div>
                  <div style="position:absolute;left:249.72px;top:354.24px" class="cls_015"><span class="cls_015">1.450,00</span></div>
                  <div style="position:absolute;left:320.64px;top:354.24px" class="cls_015"><span class="cls_015">1.500,00</span></div>
                  <div style="position:absolute;left:384.36px;top:354.24px" class="cls_015"><span class="cls_015">1.550,00</span></div>
                  <div style="position:absolute;left:448.20px;top:354.24px" class="cls_015"><span class="cls_015">1.600,00</span></div>
                  <div style="position:absolute;left:517.80px;top:354.24px" class="cls_015"><span class="cls_015">1.650,00</span></div>
                  <div style="position:absolute;left:56.64px;top:376.08px" class="cls_012"><span class="cls_012">1° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:376.08px" class="cls_012"><span class="cls_012">4 Adulto</span></div>
                  <div style="position:absolute;left:185.88px;top:376.08px" class="cls_015"><span class="cls_015">1.600,00</span></div>
                  <div style="position:absolute;left:249.72px;top:376.08px" class="cls_015"><span class="cls_015">1.650,00</span></div>
                  <div style="position:absolute;left:320.64px;top:376.08px" class="cls_015"><span class="cls_015">1.700,00</span></div>
                  <div style="position:absolute;left:384.36px;top:376.08px" class="cls_012"><span class="cls_012">1.750,00</span></div>
                  <div style="position:absolute;left:448.20px;top:376.08px" class="cls_012"><span class="cls_012">1.800,00</span></div>
                  <div style="position:absolute;left:517.80px;top:376.08px" class="cls_012"><span class="cls_012">1.850,00</span></div>
                  <div style="position:absolute;left:56.64px;top:414.24px" class="cls_005"><span class="cls_005">2° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:414.24px" class="cls_005"><span class="cls_005">1 Adulto</span></div>
                  <div style="position:absolute;left:194.16px;top:414.24px" class="cls_015"><span class="cls_015">900,00</span></div>
                  <div style="position:absolute;left:258.00px;top:414.24px" class="cls_015"><span class="cls_015">950,00</span></div>
                  <div style="position:absolute;left:320.64px;top:414.24px" class="cls_015"><span class="cls_015">1.000,00</span></div>
                  <div style="position:absolute;left:384.36px;top:414.24px" class="cls_015"><span class="cls_015">1.050,00</span></div>
                  <div style="position:absolute;left:448.20px;top:414.24px" class="cls_015"><span class="cls_015">1.100,00</span></div>
                  <div style="position:absolute;left:517.80px;top:414.24px" class="cls_015"><span class="cls_015">1.150,00</span></div>
                  <div style="position:absolute;left:56.64px;top:436.08px" class="cls_012"><span class="cls_012">2° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:436.08px" class="cls_012"><span class="cls_012">2 Adulto</span></div>
                  <div style="position:absolute;left:185.88px;top:436.08px" class="cls_015"><span class="cls_015">1.150,00</span></div>
                  <div style="position:absolute;left:249.72px;top:436.08px" class="cls_015"><span class="cls_015">1.200,00</span></div>
                  <div style="position:absolute;left:320.64px;top:436.08px" class="cls_015"><span class="cls_015">1.250,00</span></div>
                  <div style="position:absolute;left:384.36px;top:436.08px" class="cls_012"><span class="cls_012">1.300,00</span></div>
                  <div style="position:absolute;left:448.20px;top:436.08px" class="cls_012"><span class="cls_012">1.350,00</span></div>
                  <div style="position:absolute;left:517.80px;top:436.08px" class="cls_012"><span class="cls_012">1.400,00</span></div>
                  <div style="position:absolute;left:56.64px;top:457.80px" class="cls_005"><span class="cls_005">2° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:457.80px" class="cls_005"><span class="cls_005">3 Adulto</span></div>
                  <div style="position:absolute;left:185.88px;top:457.80px" class="cls_015"><span class="cls_015">1.350,00</span></div>
                  <div style="position:absolute;left:249.72px;top:457.80px" class="cls_015"><span class="cls_015">1.400,00</span></div>
                  <div style="position:absolute;left:320.64px;top:457.80px" class="cls_015"><span class="cls_015">1.450,00</span></div>
                  <div style="position:absolute;left:384.36px;top:457.80px" class="cls_015"><span class="cls_015">1.500,00</span></div>
                  <div style="position:absolute;left:448.20px;top:457.80px" class="cls_015"><span class="cls_015">1.550,00</span></div>
                  <div style="position:absolute;left:517.80px;top:457.80px" class="cls_015"><span class="cls_015">1.600,00</span></div>
                  <div style="position:absolute;left:56.64px;top:479.52px" class="cls_012"><span class="cls_012">2° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:479.52px" class="cls_012"><span class="cls_012">4 Adulto</span></div>
                  <div style="position:absolute;left:185.88px;top:479.52px" class="cls_015"><span class="cls_015">1.550,00</span></div>
                  <div style="position:absolute;left:249.72px;top:479.52px" class="cls_015"><span class="cls_015">1.600,00</span></div>
                  <div style="position:absolute;left:320.64px;top:479.52px" class="cls_015"><span class="cls_015">1.650,00</span></div>
                  <div style="position:absolute;left:384.36px;top:479.52px" class="cls_012"><span class="cls_012">1.700,00</span></div>
                  <div style="position:absolute;left:448.20px;top:479.52px" class="cls_012"><span class="cls_012">1.750,00</span></div>
                  <div style="position:absolute;left:517.80px;top:479.52px" class="cls_012"><span class="cls_012">1.800,00</span></div>
                  <div style="position:absolute;left:56.64px;top:517.80px" class="cls_005"><span class="cls_005">3° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:517.80px" class="cls_005"><span class="cls_005">1 Adulto</span></div>
                  <div style="position:absolute;left:194.16px;top:517.80px" class="cls_005"><span class="cls_005">850,00</span></div>
                  <div style="position:absolute;left:258.00px;top:517.80px" class="cls_015"><span class="cls_015">900,00</span></div>
                  <div style="position:absolute;left:328.92px;top:517.80px" class="cls_015"><span class="cls_015">950,00</span></div>
                  <div style="position:absolute;left:373.44px;top:517.80px" class="cls_015"><span class="cls_015">1.000,00</span></div>
                  <div style="position:absolute;left:448.20px;top:517.80px" class="cls_015"><span class="cls_015">1.050,00</span></div>
                  <div style="position:absolute;left:517.80px;top:517.80px" class="cls_015"><span class="cls_015">1.100,00</span></div>
                  <div style="position:absolute;left:56.64px;top:539.52px" class="cls_012"><span class="cls_012">3° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:539.52px" class="cls_012"><span class="cls_012">2 Adulto</span></div>
                  <div style="position:absolute;left:185.88px;top:539.52px" class="cls_005"><span class="cls_005">1.100,00</span></div>
                  <div style="position:absolute;left:249.72px;top:539.52px" class="cls_015"><span class="cls_015">1.150,00</span></div>
                  <div style="position:absolute;left:320.64px;top:539.52px" class="cls_012"><span class="cls_012">1.200,00</span></div>
                  <div style="position:absolute;left:384.36px;top:539.52px" class="cls_012"><span class="cls_012">1.250,00</span></div>
                  <div style="position:absolute;left:448.20px;top:539.52px" class="cls_012"><span class="cls_012">1.300,00</span></div>
                  <div style="position:absolute;left:517.80px;top:539.52px" class="cls_012"><span class="cls_012">1.350,00</span></div>
                  <div style="position:absolute;left:56.64px;top:561.24px" class="cls_005"><span class="cls_005">3° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:561.24px" class="cls_005"><span class="cls_005">3 Adulto</span></div>
                  <div style="position:absolute;left:185.88px;top:561.24px" class="cls_005"><span class="cls_005">1.300,00</span></div>
                  <div style="position:absolute;left:249.72px;top:561.24px" class="cls_015"><span class="cls_015">1.350,00</span></div>
                  <div style="position:absolute;left:320.64px;top:561.24px" class="cls_015"><span class="cls_015">1.400,00</span></div>
                  <div style="position:absolute;left:384.36px;top:561.24px" class="cls_015"><span class="cls_015">1.450,00</span></div>
                  <div style="position:absolute;left:448.20px;top:561.24px" class="cls_015"><span class="cls_015">1.500,00</span></div>
                  <div style="position:absolute;left:517.80px;top:561.24px" class="cls_015"><span class="cls_015">1.550,00</span></div>
                  <div style="position:absolute;left:56.64px;top:583.08px" class="cls_012"><span class="cls_012">3° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:583.08px" class="cls_012"><span class="cls_012">4 Adulto</span></div>
                  <div style="position:absolute;left:185.88px;top:583.08px" class="cls_005"><span class="cls_005">1.500,00</span></div>
                  <div style="position:absolute;left:249.72px;top:583.08px" class="cls_015"><span class="cls_015">1.550,00</span></div>
                  <div style="position:absolute;left:320.64px;top:583.08px" class="cls_012"><span class="cls_012">1.600,00</span></div>
                  <div style="position:absolute;left:384.36px;top:583.08px" class="cls_012"><span class="cls_012">1.650,00</span></div>
                  <div style="position:absolute;left:448.20px;top:583.08px" class="cls_012"><span class="cls_012">1.700,00</span></div>
                  <div style="position:absolute;left:517.80px;top:583.08px" class="cls_012"><span class="cls_012">1.750,00</span></div>
                  <div style="position:absolute;left:56.64px;top:622.32px" class="cls_005"><span class="cls_005">4° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:622.32px" class="cls_005"><span class="cls_005">1 Adulto</span></div>
                  <div style="position:absolute;left:194.16px;top:622.32px" class="cls_005"><span class="cls_005">800,00</span></div>
                  <div style="position:absolute;left:258.00px;top:622.32px" class="cls_015"><span class="cls_015">850,00</span></div>
                  <div style="position:absolute;left:328.92px;top:622.32px" class="cls_015"><span class="cls_015">900,00</span></div>
                  <div style="position:absolute;left:392.64px;top:622.32px" class="cls_015"><span class="cls_015">950,00</span></div>
                  <div style="position:absolute;left:448.20px;top:622.32px" class="cls_015"><span class="cls_015">1.000,00</span></div>
                  <div style="position:absolute;left:517.80px;top:622.32px" class="cls_015"><span class="cls_015">1.050,00</span></div>
                  <div style="position:absolute;left:56.64px;top:644.16px" class="cls_012"><span class="cls_012">4° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:644.16px" class="cls_012"><span class="cls_012">2 Adulto</span></div>
                  <div style="position:absolute;left:185.88px;top:644.16px" class="cls_005"><span class="cls_005">1.050,00</span></div>
                  <div style="position:absolute;left:249.72px;top:644.16px" class="cls_015"><span class="cls_015">1.100,00</span></div>
                  <div style="position:absolute;left:320.64px;top:644.16px" class="cls_015"><span class="cls_015">1.150,00</span></div>
                  <div style="position:absolute;left:384.36px;top:644.16px" class="cls_012"><span class="cls_012">1.200,00</span></div>
                  <div style="position:absolute;left:448.20px;top:644.16px" class="cls_012"><span class="cls_012">1.250,00</span></div>
                  <div style="position:absolute;left:517.80px;top:644.16px" class="cls_012"><span class="cls_012">1.300,00</span></div>
                  <div style="position:absolute;left:56.64px;top:665.88px" class="cls_005"><span class="cls_005">4° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:665.88px" class="cls_005"><span class="cls_005">3 Adulto</span></div>
                  <div style="position:absolute;left:185.88px;top:665.88px" class="cls_005"><span class="cls_005">1.250,00</span></div>
                  <div style="position:absolute;left:249.72px;top:665.88px" class="cls_015"><span class="cls_015">1.300,00</span></div>
                  <div style="position:absolute;left:320.64px;top:665.88px" class="cls_015"><span class="cls_015">1.350,00</span></div>
                  <div style="position:absolute;left:384.36px;top:665.88px" class="cls_015"><span class="cls_015">1.400,00</span></div>
                  <div style="position:absolute;left:448.20px;top:665.88px" class="cls_015"><span class="cls_015">1.450,00</span></div>
                  <div style="position:absolute;left:517.80px;top:665.88px" class="cls_015"><span class="cls_015">1.500,00</span></div>
                  <div style="position:absolute;left:56.64px;top:687.60px" class="cls_012"><span class="cls_012">4° FILA</span></div>
                  <div style="position:absolute;left:107.16px;top:687.60px" class="cls_012"><span class="cls_012">4 Adulto</span></div>
                  <div style="position:absolute;left:185.88px;top:687.60px" class="cls_005"><span class="cls_005">1.450,00</span></div>
                  <div style="position:absolute;left:249.72px;top:687.60px" class="cls_015"><span class="cls_015">1.500,00</span></div>
                  <div style="position:absolute;left:320.64px;top:687.60px" class="cls_015"><span class="cls_015">1.550,00</span></div>
                  <div style="position:absolute;left:384.36px;top:687.60px" class="cls_012"><span class="cls_012">1.600,00</span></div>
                  <div style="position:absolute;left:448.20px;top:687.60px" class="cls_012"><span class="cls_012">1.650,00</span></div>
                  <div style="position:absolute;left:517.80px;top:687.60px" class="cls_012"><span class="cls_012">1.700,00</span></div>
                  <div style="position:absolute;left:74.64px;top:717.60px" class="cls_019"><span class="cls_019">1)</span></div>
                  <div style="position:absolute;left:92.04px;top:717.60px" class="cls_019"><span class="cls_019">A maggio, giugno, luglio, settembre è possibile prenotare gli ombrelloni anche per periodi inferiori al mese (minimo 10 giorni);</span></div>
                  <div style="position:absolute;left:92.64px;top:729.00px" class="cls_019"><span class="cls_019">in tal caso, il costo, sarà calcolato in base al prezzo mensile, tenuto conto della fila e del settore prescelto, diviso 30 e</span></div>
                  <div style="position:absolute;left:92.64px;top:740.52px" class="cls_019"><span class="cls_019">moltiplicato per i giorni richiesti.  A tale costo sarà aggiunto un supplemento giornaliero di € 5,00.</span></div>
                  <div style="position:absolute;left:74.64px;top:752.28px" class="cls_018"><span class="cls_018">2)</span><span class="cls_013"> </span><span class="cls_019">  Per il mese di agosto l’unica forma di abbonamento è mensile, pertanto per eventuali periodi inferiori  si applicherà il prezzo</span></div>
                  <div style="position:absolute;left:92.64px;top:763.68px" class="cls_019"><span class="cls_019">dell'intero mese come da listino.</span></div>
                  </div> --}}
            </div>
          </div>
        </div>
      </div>
  </div>
@endsection
