unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExExtCtrls, JvShape, StdCtrls, StdButtons, Buttons,
  PngSpeedButton, ImgList, PngImageList, fRange, XPMan, JvExtComponent,
  JvPanel, JvExControls, JvXPCore, JvXPButtons, JvLabel, jpeg, Menus,
  ActnList, JvExStdCtrls, JvShapedButton, JvComponentBase, JvFormAnimation,
  JvFormMagnet;

type
  TGameAction = (gaOpenRaise = 1, gaColdCall = 2,gaColdCallIP = 3,gaColdCallOOP = 4,gaBet3 = 5,gaSqezze = 6,gaIpVsThreeBet = 7, gaOopVsThreeBet = 8, None = 9);
  TPlayerAction = (paOpenRaise = 1, paColdCall = 2, paBet3 = 3, paFold = 4, paNone = 5);


  TRangeTrainer = class(TForm)
    pnl1: TjvPanel;
    bFold: TStdButton;
    bCall: TStdButton;
    bRaise: TStdButton;
    sbCard1_2: TPngSpeedButton;
    sbCard1_1: TPngSpeedButton;
    pimlCard: TPngImageList;
    pnl2: TjvPanel;
    pnl3: TjvPanel;
    sbCard5_2: TPngSpeedButton;
    sbCard5_1: TPngSpeedButton;
    pnl4: TjvPanel;
    sbCard2_2: TPngSpeedButton;
    sbCard2_1: TPngSpeedButton;
    pnl5: TjvPanel;
    sbCard3_2: TPngSpeedButton;
    sbCard3_1: TPngSpeedButton;
    pnl6: TjvPanel;
    sbCard4_2: TPngSpeedButton;
    sbCard4_1: TPngSpeedButton;
    pnl7: TjvPanel;
    sbCard6_2: TPngSpeedButton;
    sbCard6_1: TPngSpeedButton;
    rg1: TRadioGroup;
    pnl8: TPanel;
    b1: TButton;
    b2: TButton;
    xpmnfst1: TXPManifest;
    b3: TButton;
    lbet1: TJvLabel;
    lbet2: TJvLabel;
    lbet3: TJvLabel;
    lbet4: TJvLabel;
    lbet6: TJvLabel;
    lbet5: TJvLabel;
    img1: TImage;
    l1: TLabel;
    l2: TLabel;
    lHand: TLabel;
    lError: TLabel;
    pm1: TPopupMenu;
    miopenraise1: TMenuItem;
    micoldcall1: TMenuItem;
    miN3bet1: TMenuItem;
    misqezze1: TMenuItem;
    miipvs3bet1: TMenuItem;
    mioopvs3bet1: TMenuItem;
    mico1: TMenuItem;
    miSB1: TMenuItem;
    miEP2: TMenuItem;
    miMP2: TMenuItem;
    miBU2: TMenuItem;
    miN11: TMenuItem;
    miN21: TMenuItem;
    miEPinBU1: TMenuItem;
    miEPinSB1: TMenuItem;
    miEPinBB1: TMenuItem;
    miMPinCO1: TMenuItem;
    miMPinBU1: TMenuItem;
    miMPinSB1: TMenuItem;
    miMPinBB1: TMenuItem;
    miCOinBU1: TMenuItem;
    miCOinSB1: TMenuItem;
    miCOinBB1: TMenuItem;
    miBUinSB1: TMenuItem;
    miBUinBB1: TMenuItem;
    miSBinBB1: TMenuItem;
    miEPinMP1: TMenuItem;
    miEPinCO1: TMenuItem;
    miEPinBU2: TMenuItem;
    miEPinSB2: TMenuItem;
    miEPinBB2: TMenuItem;
    miMPinCO2: TMenuItem;
    miMPinBU2: TMenuItem;
    miMPinSB2: TMenuItem;
    miMPinBB2: TMenuItem;
    miCOinBU2: TMenuItem;
    miCOinSB2: TMenuItem;
    miCOinBB2: TMenuItem;
    miBUinSB2: TMenuItem;
    miBUinBB2: TMenuItem;
    miSBinBB2: TMenuItem;
    miEP3: TMenuItem;
    miMP3: TMenuItem;
    miCO3: TMenuItem;
    miBU3: TMenuItem;
    miSB3: TMenuItem;
    miBB1: TMenuItem;
    miEPcall1: TMenuItem;
    miEP4bet1: TMenuItem;
    miMPcall1: TMenuItem;
    miMP4bet1: TMenuItem;
    miCOcall1: TMenuItem;
    miCO4bet1: TMenuItem;
    miBUcall1: TMenuItem;
    miBU4bet1: TMenuItem;
    miEPcall2: TMenuItem;
    miEP4bet2: TMenuItem;
    miMPcall2: TMenuItem;
    miMP4bet2: TMenuItem;
    miCOcall2: TMenuItem;
    miCO4bet2: TMenuItem;
    miBUcall2: TMenuItem;
    miBU4bet2: TMenuItem;
    actlst1: TActionList;
    act1: TAction;
    act2: TAction;
    act3: TAction;
    cbHeroFixPosition: TCheckBox;
    l3: TLabel;
    lPfr: TLabel;
    lVpipName: TLabel;
    lVpip: TLabel;
    Button1: TButton;
    lThreeBetName: TLabel;
    lThreeBet: TLabel;
    lDealer5: TJvShapedButton;
    lDealer6: TJvShapedButton;
    lDealer1: TJvShapedButton;
    lDealer2: TJvShapedButton;
    lDealer3: TJvShapedButton;
    lDealer4: TJvShapedButton;
    JvFormMagnet1: TJvFormMagnet;
    procedure FormActivate(Sender: TObject);
    procedure bFoldClick(Sender: TObject);
    procedure bCallClick(Sender: TObject);
    procedure bRaiseClick(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure miPopRangeShow(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure act3Execute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FHeroCard1 : Integer;
    FHeroCard2 : Integer;
    FDealerPos : Integer;
    FHeroPos : Integer;
    FHeroGamePos : Integer;
    FCurrentAction : TGameAction;
    FOpenRaiser : Integer;
    FColdColler : Integer;
    FIsUseAll : Boolean;
    FAllRange : TStringList;
    FHand : Integer;
    FPfr : Integer;
    FHandWithOpenRaiser : Integer;
    FBet3 : Integer;
    FVpip : Integer;
    FError : Integer;

    { Private declarations }
    procedure CreateNewHand;
    procedure GenRandomValue;
    procedure TableRepaint;
    procedure GenerateAction;
    procedure ReadRanges;
    function FindRange(aStr : String): TRange;
    function GetRangeRaiseName : String;
    function GetRangeCallName : String;

    function GetRangeRaise : TRange;
    function GetRangeCall : TRange;
    procedure RepaintStats;
    procedure AddError;
    procedure Reset;

    property RangeRaise : TRange Read GetRangeRaise;
    property RangeCall : TRange Read GetRangeCall;
  public
    { Public declarations }
  end;

var
  RangeTrainer: TRangeTrainer;

implementation

uses Math, IniFiles, ShowRange;

const
  cPos : array[1..6] of string = ('SB', 'BB', 'EP', 'MP', 'CO','BU');
  cIniFile : string = '.\range.ini';

{$R *.dfm}


procedure TRangeTrainer.RepaintStats;
begin
  if FHand = 0 then Exit;
  lPfr.Caption := IntToStr(Round(FPfr/FHand*100));
  lVpip.Caption := IntToStr(Round(FVpip/FHand*100));
  if FHandWithOpenRaiser <> 0
  then lThreeBet.Caption := FloatToStr(Round(FBet3/FHandWithOpenRaiser*1000)/10)
  else lThreeBet.Caption := '';

  lHand.Caption := IntToStr(FHand);
  lError.Caption := IntToStr(FError) + ' (' + IntToStr(Round(FError/FHand*100)) +'%)';
end;

procedure TRangeTrainer.AddError;
begin
  FError := FError + 1;
  lError.Caption := IntToStr(FError) + ' (' + IntToStr(Round(FError/FHand*100)) +'%)';
end;

procedure TRangeTrainer.GenerateAction;
 var
    eQ : Integer;
begin
  case rg1.ItemIndex of
    0 : FCurrentAction := gaOpenRaise;
    1 : FCurrentAction := gaColdCall;
    2 : FCurrentAction := gaColdCallIP;
    3 : FCurrentAction := gaColdCallOOP;
    4 : FCurrentAction := gaBet3;
    5 : FCurrentAction := gaSqezze;
    6 : FCurrentAction := gaIpVsThreeBet;
    7 : FCurrentAction := gaOopVsThreeBet;
    8 : begin
      eQ := Random(100);
      if eq < 45 then FCurrentAction := gaOpenRaise;
      if (eQ >= 45) and (eQ < 90) then FCurrentAction := gaBet3;
      if (eQ >= 90) and (eQ < 100) then FCurrentAction := gaSqezze;
      FIsUseAll := True;
    end;
    9 : begin
      eQ := Random(100);
      if eq < 40 then FCurrentAction := gaOpenRaise;
      if (eQ >= 40) and (eQ < 60) then FCurrentAction := gaColdCall;
      if (eQ >= 60) and (eQ < 80) then FCurrentAction := gaBet3;
      if (eQ >= 80) and (eQ < 90) then FCurrentAction := gaSqezze;
      if (eQ >= 90) and (eQ < 95) then FCurrentAction := gaIpVsThreeBet;
      if (eQ >= 95) and (eQ < 100) then FCurrentAction := gaOopVsThreeBet;
      FIsUseAll := True;
    end;
  end;
  bCall.Enabled := not (FCurrentAction in [gaOpenRaise]) ;
  //bRaise.Enabled := not (FCurrentAction in [gaColdCall]) ;
end;


function TRangeTrainer.FindRange(aStr : String): TRange;
var
  i : Integer;
begin
  Result := nil;
  for i := 0 to FAllRange.Count - 1 do
    if FAllRange[i] = aStr then Result := (FAllRange.Objects[i] as TRange);
end;


function TRangeTrainer.GetRangeCallName : String;
  var
   eResult : String;
begin
  eResult := '';
  if FCurrentAction in [gaColdCall, gaColdCallIP, gaColdCallOOP, gaBet3, gaSqezze]
  then eResult := 'cold_call\vs'+ cPos[FOpenRaiser] + 'in' + cPos[FHeroGamePos];

  if FCurrentAction = gaIpVsThreeBet
  then eResult := 'ip_vs_3bet\' + cPos[FHeroGamePos] + 'call';

  if FCurrentAction = gaOopVsThreeBet
  then eResult := 'oop_vs_3bet\' + cPos[FHeroGamePos] + 'call';
  Result := eResult;
end;




function TRangeTrainer.GetRangeRaiseName : String;
  var
   eResult : String;
begin
  eResult := '';
  if FCurrentAction = gaOpenRaise
  then eResult := 'open_raise\'+cPos[FHeroGamePos];

  if FCurrentAction in [gaBet3,gaColdCall,gaColdCallIP,gaColdCallOOP]
  then eResult := '3bet\vs'+ cPos[FOpenRaiser] + 'in' + cPos[FHeroGamePos];

  if FCurrentAction = gaSqezze
  then eResult := 'sqezze\'+ cPos[FHeroGamePos];

  if FCurrentAction = gaIpVsThreeBet
  then eResult := 'ip_vs_3bet\' + cPos[FHeroGamePos] + '4bet';

  if FCurrentAction = gaOopVsThreeBet
  then eResult := 'oop_vs_3bet\' + cPos[FHeroGamePos] + '4bet';
  Result := eResult;
end;



function TRangeTrainer.GetRangeCall : TRange;
  var
    eRangeName : String;
begin
  eRangeName := GetRangeCallName;
  if eRangeName = ''
  then Result := TRange.Create('')
  else Result := FindRange(eRangeName);
end;


function TRangeTrainer.GetRangeRaise : TRange;
  var
    eRangeName : String;
begin
  eRangeName := GetRangeRaiseName;
  if eRangeName = ''
  then Result := TRange.Create('')
  else Result := FindRange(eRangeName);
end;


procedure TRangeTrainer.FormActivate(Sender: TObject);
begin
  ReadRanges;
  FCurrentAction := gaOpenRaise;
  Reset;
  CreateNewHand;
end;


procedure TRangeTrainer.GenRandomValue;
 var
   eIsCardAccept : Boolean;
begin
  Randomize;
  FHeroGamePos := -1;
  //позиция
  FDealerPos := Random(6) + 1;
  if cbHeroFixPosition.Checked
  then FHeroPos := 5
  else FHeroPos := Random(6) + 1;
  FHeroGamePos := FHeroPos - FDealerPos;
  if FHeroGamePos <= 0 then FHeroGamePos := FHeroGamePos + 6;

  if (FCurrentAction = gaOpenRaise) and (FHeroGamePos = 2) then begin GenRandomValue; Exit; end;
  if (FCurrentAction in [gaColdCall, gaBet3, gaColdCallIP, gaColdCallOOP])
      and (FHeroGamePos = 3) then begin GenRandomValue; Exit; end;
  if (FCurrentAction in [gaColdCallIP]) and (FHeroGamePos in [1]) then begin GenRandomValue; Exit; end;
  if (FCurrentAction in [gaColdCallOOP]) and (FHeroGamePos in [3,4,5,6]) then begin GenRandomValue; Exit; end;
  if (FCurrentAction in [gaSqezze]) and (FHeroGamePos in [3,4]) then begin GenRandomValue; Exit; end;
  if (FCurrentAction = gaIpvsThreeBet) and (FHeroGamePos in [1,2]) then begin GenRandomValue; Exit; end;
  if (FCurrentAction = gaOopvsThreeBet) and (FHeroGamePos in [6,2]) then begin GenRandomValue; Exit; end;

  if FCurrentAction in [gaColdCall,gaBet3] then begin
    if FHeroGamePos = 1 then FOpenRaiser := 3 + Random(4);
    if (FHeroGamePos = 2) and (Random(5) = 1) then FOpenRaiser := 1
    else if FHeroGamePos = 2 then FOpenRaiser := 3 + Random(4);
    if not (FHeroGamePos in [1,2]) then FOpenRaiser := 3 + Random(FHeroGamePos - 3);
  end;

  if FCurrentAction in [gaColdCallIP] then begin
    if FHeroGamePos = 2 then FOpenRaiser := 1;
    if FHeroGamePos = 4 then FOpenRaiser := 3;
    if FHeroGamePos = 5 then FOpenRaiser := 3 + Random(2);
    if FHeroGamePos = 6 then FOpenRaiser := 3 + Random(3);
  end;

  if FCurrentAction in [gaColdCallOOP] then begin
    //FHeroGamePos := Random(2) + 1;
    if FHeroGamePos = 1 then FOpenRaiser := 3 + Random(4);
    if FHeroGamePos = 2 then FOpenRaiser := 3 + Random(5);
    if FOpenRaiser = 7 then FOpenRaiser := 1;
  end;


  if FCurrentAction = gaSqezze then begin
    if FHeroGamePos in [5,6,1] then begin
      FOpenRaiser := 3;
      FColdColler := 4;
    end;
    if FHeroGamePos in [2] then begin
      FOpenRaiser := 6;
      FColdColler := 1;
    end;
  end else
    FColdColler := -1;

  if FCurrentAction = gaIpvsThreeBet then FOpenRaiser := Random(FHeroGamePos-1) + 1;

  if FCurrentAction = gaOopVsThreeBet then
    case FHeroGamePos of
      1 : FOpenRaiser := 2;
      3 : FOpenRaiser := 4 + Random(3);
      4 : FOpenRaiser := 5 + Random(2);
      5 : FOpenRaiser := 6;
    end;

  eIsCardAccept := False;
  // карты
  while not eIsCardAccept do begin
    FHeroCard1 := Random(52) + 1;
    FHeroCard2 := Random(52) + 1;
    while FHeroCard2 = FHeroCard1 do begin
      FHeroCard2 := Random(52) + 1;
    end;
    if FCurrentAction in [gaIpvsThreeBet, gaOopvsThreeBet] then begin
      eIsCardAccept := FindRange('open_raise\'+cPos[FHeroGamePos]).CheckHand(FHeroCard1, FHeroCard2);
    end else
      eIsCardAccept := True;
  end;


end;


procedure TRangeTrainer.CreateNewHand;
begin
  RepaintStats;
  GenerateAction;
  GenRandomValue;
  TableRepaint;
end;

procedure TRangeTrainer.TableRepaint;

procedure Fold(aPos : Integer);
begin
  case (FDealerPos + aPos) mod 6 of
    1 : begin sbCard1_1.Visible := False; sbCard1_2.Visible := False; end;
    2 : begin sbCard2_1.Visible := False; sbCard2_2.Visible := False; end;
    3 : begin sbCard3_1.Visible := False; sbCard3_2.Visible := False; end;
    4 : begin sbCard4_1.Visible := False; sbCard4_2.Visible := False; end;
    5 : begin sbCard5_1.Visible := False; sbCard5_2.Visible := False; end;
    0 : begin sbCard6_1.Visible := False; sbCard6_2.Visible := False; end;
  end;
end;


procedure Bet(aPos : Integer; aValue : Double);
 var
  eLabel : TJvLabel;
begin
  case (FDealerPos + aPos) mod 6 of
    1 : eLabel := lbet1;
    2 : eLabel := lbet2;
    3 : eLabel := lbet3;
    4 : eLabel := lbet4;
    5 : eLabel := lbet5;
    else eLabel := lbet6;
  end;

  eLabel.Visible := True;
  eLabel.Caption := FloatToStr(aValue);
end;

var
   i,ePos : Integer;
   eDealer : TJvShapedButton;
//   eBB : TJvShapedButton;

begin
  sbCard1_1.Visible := True;
  sbCard1_2.Visible := True;
  sbCard2_1.Visible := True;
  sbCard2_2.Visible := True;
  sbCard3_1.Visible := True;
  sbCard3_2.Visible := True;
  sbCard4_1.Visible := True;
  sbCard4_2.Visible := True;
  sbCard5_1.Visible := True;
  sbCard5_2.Visible := True;
  sbCard6_1.Visible := True;
  sbCard6_2.Visible := True;

  lbet1.Visible := False;
  lbet2.Visible := False;
  lbet3.Visible := False;
  lbet4.Visible := False;
  lbet5.Visible := False;
  lbet6.Visible := False;

  sbCard1_1.PngImage.Assign(pimlCard.PngImages.Items[0].PngImage);
  sbCard1_2.PngImage.Assign(pimlCard.PngImages.Items[0].PngImage);
  sbCard2_1.PngImage.Assign(pimlCard.PngImages.Items[0].PngImage);
  sbCard2_2.PngImage.Assign(pimlCard.PngImages.Items[0].PngImage);
  sbCard3_1.PngImage.Assign(pimlCard.PngImages.Items[0].PngImage);
  sbCard3_2.PngImage.Assign(pimlCard.PngImages.Items[0].PngImage);
  sbCard4_1.PngImage.Assign(pimlCard.PngImages.Items[0].PngImage);
  sbCard4_2.PngImage.Assign(pimlCard.PngImages.Items[0].PngImage);
  sbCard5_1.PngImage.Assign(pimlCard.PngImages.Items[0].PngImage);
  sbCard5_2.PngImage.Assign(pimlCard.PngImages.Items[0].PngImage);
  sbCard6_1.PngImage.Assign(pimlCard.PngImages.Items[0].PngImage);
  sbCard6_2.PngImage.Assign(pimlCard.PngImages.Items[0].PngImage);

  case FDealerPos of
    1: eDealer := lDealer1;
    2: eDealer := lDealer2;
    3: eDealer := lDealer3;
    4: eDealer := lDealer4;
    5: eDealer := lDealer5;
  else
    eDealer := lDealer6;
  end;

//  case FDealerPos of
//    1: ebb := lDealer3;
//    2: ebb := lDealer4;
//    3: ebb := lDealer5;
//    4: ebb := lDealer6;
//    5: ebb := lDealer1;
//  else
//    ebb := lDealer2;
//  end;


  lDealer1.Visible := False;
  lDealer2.Visible := False;
  lDealer3.Visible := False;
  lDealer4.Visible := False;
  lDealer5.Visible := False;
  lDealer6.Visible := False;

  eDealer.Caption := 'D';
  //eDealer.Font.Size := 20;
  eDealer.Font.Color := clRed;
  eDealer.Visible := True;

//  eBB.Caption := 'BB';
//  eBB.Font.Size := 12;
//  eBB.Font.Color := clWhite;
//  eBB.Visible := True;

  case FHeroPos of
    1: begin
      sbCard1_1.PngImage.Assign(pimlCard.PngImages.Items[FHeroCard1].PngImage);
      sbCard1_2.PngImage.Assign(pimlCard.PngImages.Items[FHeroCard2].PngImage);
    end;
    2: begin
      sbCard2_1.PngImage.Assign(pimlCard.PngImages.Items[FHeroCard1].PngImage);
      sbCard2_2.PngImage.Assign(pimlCard.PngImages.Items[FHeroCard2].PngImage);
    end;
    3: begin
      sbCard3_1.PngImage.Assign(pimlCard.PngImages.Items[FHeroCard1].PngImage);
      sbCard3_2.PngImage.Assign(pimlCard.PngImages.Items[FHeroCard2].PngImage);
    end;
    4: begin
      sbCard4_1.PngImage.Assign(pimlCard.PngImages.Items[FHeroCard1].PngImage);
      sbCard4_2.PngImage.Assign(pimlCard.PngImages.Items[FHeroCard2].PngImage);
    end;
    5: begin
      sbCard5_1.PngImage.Assign(pimlCard.PngImages.Items[FHeroCard1].PngImage);
      sbCard5_2.PngImage.Assign(pimlCard.PngImages.Items[FHeroCard2].PngImage);
    end;
    6: begin
      sbCard6_1.PngImage.Assign(pimlCard.PngImages.Items[FHeroCard1].PngImage);
      sbCard6_2.PngImage.Assign(pimlCard.PngImages.Items[FHeroCard2].PngImage);
    end;
  end;

  Bet(1,0.5);
  Bet(2,1);

  if FCurrentAction = gaOpenRaise then begin
    if FHeroGamePos in [6,1,2,4,5] then Fold(3);
    if FHeroGamePos in [6,1,2,5] then Fold(4);
    if FHeroGamePos in [6,1,2] then Fold(5);
    if FHeroGamePos in [1] then Fold(0);
  end;
  if FCurrentAction in [gaColdCall, gaColdCallIP, gaColdCallOOP, gaBet3, gaSqezze] then begin
    for i := 3 to 8 do begin
      ePos := i;
      if i > 6 then ePos := i mod 6;
      if (FOpenRaiser <> ePos) and (FHeroGamePos <> ePos) and (FColdColler <> ePos) then Fold(ePos);
      if (FHeroGamePos = ePos) then Break;
    end;
    if (FOpenRaiser = 1) and (FCurrentAction <> gaSqezze) then Bet(FOpenRaiser, 2.5)
    else if (FOpenRaiser = 6) and (FCurrentAction <> gaSqezze) then Bet(FOpenRaiser, 2)
    else Bet(FOpenRaiser, 3);
  end;
  if FCurrentAction  = gaSqezze then Bet(FColdColler, 3);

  if FCurrentAction in [gaIpvsThreeBet, gaOopvsThreeBet] then begin
    for i := 3 to 8 do begin
      ePos := i;
      if i > 6 then ePos := i mod 6;
      if (FOpenRaiser <> ePos) and (FHeroGamePos <> ePos) and (FColdColler <> ePos) then Fold(ePos);
    end;
    Bet(FOpenRaiser, 10);
    Bet(FHeroGamePos, 3);
  end;

  sbCard1_1.Repaint;
  sbCard1_2.Repaint;
  sbCard2_1.Repaint;
  sbCard2_2.Repaint;
  sbCard3_1.Repaint;
  sbCard3_2.Repaint;
  sbCard4_1.Repaint;
  sbCard4_2.Repaint;
  sbCard5_1.Repaint;
  sbCard5_2.Repaint;
  sbCard6_1.Repaint;
  sbCard6_2.Repaint;
end;


procedure TRangeTrainer.bFoldClick(Sender: TObject);
 var
  eRange : TRange;
  eNewHand : Boolean;
begin
  eNewHand := True;
  eRange := RangeRaise;
  if eRange.CheckHand(FHeroCard1,FHeroCard2) then begin
    MessageBox(Handle, 'Error fold!', 'RangeTrainer', MB_OK + MB_ICONWARNING);
    eNewHand := False;
    AddError;
    with TRangeViewer.Create(nil) do try
      Caption := GetRangeRaiseName ;
      ShowRange(eRange);
    finally
      Free;
    end;
  end;
  eRange := RangeCall;
  if FCurrentAction <> gaSqezze then
  if eRange.CheckHand(FHeroCard1,FHeroCard2) then begin
    MessageBox(Handle, 'Error fold!', 'RangeTrainer', MB_OK + MB_ICONWARNING);
    eNewHand := False;
    AddError;
    with TRangeViewer.Create(nil) do try
      Caption := GetRangeCallName;
      ShowRange(eRange);
    finally
      Free;
    end;
  end;

  if eNewHand then begin
    FHand := FHand + 1;
    if FCurrentAction in [gaColdCall, gaColdCallIP, gaColdCallOOP, gaBet3] then begin
      FHandWithOpenRaiser := FHandWithOpenRaiser + 1;
    end;
    CreateNewHand;
  end;
end;

procedure TRangeTrainer.bCallClick(Sender: TObject);
 var
  eRange : TRange;
begin
  eRange := RangeCall;
  if not eRange.CheckHand(FHeroCard1,FHeroCard2) then begin
    MessageBox(Handle, 'Error call!', 'RangeTrainer', MB_OK + MB_ICONWARNING);
    AddError;
    if GetRangeCallName <> '' then
      with TRangeViewer.Create(nil) do try
        Caption := GetRangeCallName;
        ShowRange(eRange);
      finally
        Free;
      end;
  end else begin
    FHand := FHand + 1;
    FVpip := FVpip + 1;
    FHandWithOpenRaiser := FHandWithOpenRaiser + 1;
    CreateNewHand;
  end;
end;

procedure TRangeTrainer.bRaiseClick(Sender: TObject);
 var
  eRange : TRange;
begin
  eRange := RangeRaise;
  if not eRange.CheckHand(FHeroCard1,FHeroCard2) then begin
    MessageBox(Handle, 'Error raise!', 'RangeTrainer', MB_OK + MB_ICONWARNING);
    AddError;
    if GetRangeRaiseName <> '' then
      with TRangeViewer.Create(nil) do try
        Caption := GetRangeRaiseName;
        ShowRange(eRange);
      finally
        Free;
      end;
  end else begin
    FHand := FHand + 1;
    FPfr := FPfr + 1;
    FVpip := FVpip + 1;
    if FCurrentAction in [gaColdCall, gaColdCallIP, gaColdCallOOP, gaBet3, gaSqezze] then begin
      FBet3 := FBet3 + 1;
      FHandWithOpenRaiser := FHandWithOpenRaiser + 1;
    end;
    CreateNewHand;
  end;
end;


procedure TRangeTrainer.ReadRanges;
begin
  FAllRange := TStringList.Create;
  with TIniFile.Create(cIniFile) do try
    FAllRange.AddObject('open_raise\EP',TRange.Create(ReadString('open_raise','EP','')));
    FAllRange.AddObject('open_raise\MP',TRange.Create(ReadString('open_raise','MP','')));
    FAllRange.AddObject('open_raise\CO',TRange.Create(ReadString('open_raise','CO','')));
    FAllRange.AddObject('open_raise\BU',TRange.Create(ReadString('open_raise','BU','')));
    FAllRange.AddObject('open_raise\SB',TRange.Create(ReadString('open_raise','SB','')));

    FAllRange.AddObject('cold_call\vsEPinMP',TRange.Create(ReadString('cold_call','vsEPinMP','')));
    FAllRange.AddObject('cold_call\vsEPinCO',TRange.Create(ReadString('cold_call','vsEPinCO','')));
    FAllRange.AddObject('cold_call\vsEPinBU',TRange.Create(ReadString('cold_call','vsEPinBU','')));
    FAllRange.AddObject('cold_call\vsEPinSB',TRange.Create(ReadString('cold_call','vsEPinSB','')));
    FAllRange.AddObject('cold_call\vsEPinBB',TRange.Create(ReadString('cold_call','vsEPinBB','')));
    FAllRange.AddObject('cold_call\vsMPinCO',TRange.Create(ReadString('cold_call','vsMPinCO','')));
    FAllRange.AddObject('cold_call\vsMPinBU',TRange.Create(ReadString('cold_call','vsMPinBU','')));
    FAllRange.AddObject('cold_call\vsMPinSB',TRange.Create(ReadString('cold_call','vsMPinSB','')));
    FAllRange.AddObject('cold_call\vsMPinBB',TRange.Create(ReadString('cold_call','vsMPinBB','')));
    FAllRange.AddObject('cold_call\vsCOinBU',TRange.Create(ReadString('cold_call','vsCOinBU','')));
    FAllRange.AddObject('cold_call\vsCOinSB',TRange.Create(ReadString('cold_call','vsCOinSB','')));
    FAllRange.AddObject('cold_call\vsCOinBB',TRange.Create(ReadString('cold_call','vsCOinBB','')));
    FAllRange.AddObject('cold_call\vsBUinSB',TRange.Create(ReadString('cold_call','vsBUinSB','')));
    FAllRange.AddObject('cold_call\vsBUinBB',TRange.Create(ReadString('cold_call','vsBUinBB','')));
    FAllRange.AddObject('cold_call\vsSBinBB',TRange.Create(ReadString('cold_call','vsSBinBB','')));

    FAllRange.AddObject('3bet\vsEPinMP',TRange.Create(ReadString('3bet','vsEPinMP','')));
    FAllRange.AddObject('3bet\vsEPinCO',TRange.Create(ReadString('3bet','vsEPinCO','')));
    FAllRange.AddObject('3bet\vsEPinBU',TRange.Create(ReadString('3bet','vsEPinBU','')));
    FAllRange.AddObject('3bet\vsEPinSB',TRange.Create(ReadString('3bet','vsEPinSB','')));
    FAllRange.AddObject('3bet\vsEPinBB',TRange.Create(ReadString('3bet','vsEPinBB','')));
    FAllRange.AddObject('3bet\vsMPinCO',TRange.Create(ReadString('3bet','vsMPinCO','')));
    FAllRange.AddObject('3bet\vsMPinBU',TRange.Create(ReadString('3bet','vsMPinBU','')));
    FAllRange.AddObject('3bet\vsMPinSB',TRange.Create(ReadString('3bet','vsMPinSB','')));
    FAllRange.AddObject('3bet\vsMPinBB',TRange.Create(ReadString('3bet','vsMPinBB','')));
    FAllRange.AddObject('3bet\vsCOinBU',TRange.Create(ReadString('3bet','vsCOinBU','')));
    FAllRange.AddObject('3bet\vsCOinSB',TRange.Create(ReadString('3bet','vsCOinSB','')));
    FAllRange.AddObject('3bet\vsCOinBB',TRange.Create(ReadString('3bet','vsCOinBB','')));
    FAllRange.AddObject('3bet\vsBUinSB',TRange.Create(ReadString('3bet','vsBUinSB','')));
    FAllRange.AddObject('3bet\vsBUinBB',TRange.Create(ReadString('3bet','vsBUinBB','')));
    FAllRange.AddObject('3bet\vsSBinBB',TRange.Create(ReadString('3bet','vsSBinBB','')));

    FAllRange.AddObject('sqezze\EP',TRange.Create(ReadString('sqezze','EP','')));
    FAllRange.AddObject('sqezze\MP',TRange.Create(ReadString('sqezze','MP','')));
    FAllRange.AddObject('sqezze\CO',TRange.Create(ReadString('sqezze','CO','')));
    FAllRange.AddObject('sqezze\BU',TRange.Create(ReadString('sqezze','BU','')));
    FAllRange.AddObject('sqezze\SB',TRange.Create(ReadString('sqezze','SB','')));
    FAllRange.AddObject('sqezze\BB',TRange.Create(ReadString('sqezze','BB','')));

    FAllRange.AddObject('ip_vs_3bet\EPcall',TRange.Create(ReadString('ip_vs_3bet','EPcall','')));
    FAllRange.AddObject('ip_vs_3bet\EP4bet',TRange.Create(ReadString('ip_vs_3bet','EP4bet','')));
    FAllRange.AddObject('ip_vs_3bet\MPcall',TRange.Create(ReadString('ip_vs_3bet','MPcall','')));
    FAllRange.AddObject('ip_vs_3bet\MP4bet',TRange.Create(ReadString('ip_vs_3bet','MP4bet','')));
    FAllRange.AddObject('ip_vs_3bet\COcall',TRange.Create(ReadString('ip_vs_3bet','COcall','')));
    FAllRange.AddObject('ip_vs_3bet\CO4bet',TRange.Create(ReadString('ip_vs_3bet','CO4bet','')));
    FAllRange.AddObject('ip_vs_3bet\BUcall',TRange.Create(ReadString('ip_vs_3bet','BUcall','')));
    FAllRange.AddObject('ip_vs_3bet\BU4bet',TRange.Create(ReadString('ip_vs_3bet','BU4bet','')));

    FAllRange.AddObject('oop_vs_3bet\EPcall',TRange.Create(ReadString('oop_vs_3bet','EPcall','')));
    FAllRange.AddObject('oop_vs_3bet\EP4bet',TRange.Create(ReadString('oop_vs_3bet','EP4bet','')));
    FAllRange.AddObject('oop_vs_3bet\MPcall',TRange.Create(ReadString('oop_vs_3bet','MPcall','')));
    FAllRange.AddObject('oop_vs_3bet\MP4bet',TRange.Create(ReadString('oop_vs_3bet','MP4bet','')));
    FAllRange.AddObject('oop_vs_3bet\COcall',TRange.Create(ReadString('oop_vs_3bet','COcall','')));
    FAllRange.AddObject('oop_vs_3bet\CO4bet',TRange.Create(ReadString('oop_vs_3bet','CO4bet','')));
    FAllRange.AddObject('oop_vs_3bet\SBcall',TRange.Create(ReadString('oop_vs_3bet','SBcall','')));
    FAllRange.AddObject('oop_vs_3bet\SB4bet',TRange.Create(ReadString('oop_vs_3bet','SB4bet','')));
  finally
    Free;
  end;
end;


procedure TRangeTrainer.b1Click(Sender: TObject);
begin
  TableRepaint;
end;

procedure TRangeTrainer.rg1Click(Sender: TObject);
begin
  Reset;
end;

procedure TRangeTrainer.b2Click(Sender: TObject);
begin
  with TRangeViewer.Create(nil) do try
    ShowRange(RangeRaise);
  finally
    Free;
  end;
end;

procedure TRangeTrainer.b3Click(Sender: TObject);
begin
  CreateNewHand;
end;


procedure TRangeTrainer.miPopRangeShow(Sender: TObject);
var
   eStr : string;
begin
  eStr := (Sender as TMenuItem).Parent.Caption + '\' + (Sender as TMenuItem).Caption;
  eStr := StringReplace(eStr,'&','',[rfReplaceAll]);
  with TRangeViewer.Create(nil) do try
    Caption := eStr;
    ShowRange(FindRange(eStr));
  finally
    Free;
  end;
end;


procedure TRangeTrainer.act1Execute(Sender: TObject);
begin
  bFold.Click;
end;

procedure TRangeTrainer.act2Execute(Sender: TObject);
begin
  bCall.Click;
end;

procedure TRangeTrainer.act3Execute(Sender: TObject);
begin
  bRaise.Click;
end;

procedure TRangeTrainer.Reset;
begin
  FHand := 1;
  FVpip := 0;
  FPfr := 0;
  FBet3 := 0;
  FHandWithOpenRaiser := 0;
  FError := 0;
  CreateNewHand;
end;

procedure TRangeTrainer.Button1Click(Sender: TObject);
begin
  Reset;
end;

end.
