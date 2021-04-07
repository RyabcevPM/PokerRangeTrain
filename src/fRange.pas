unit fRange;

interface

uses SysUtils, Classes;

type
  TRange = class(TObject)
    FRange : string;
    FHand : TStringList;
    FProcent : String;
  private
    function GetArrayNum(aChr : Char) : Integer;
  public
    constructor Create(aStr : string);
    function CheckHand(aFirst : Integer; aSecond:Integer) : Boolean;
    property Hands : TStringList read FHand;
    property Procent : String read FProcent;
  end;

implementation

uses
  Math;

const
  cList : array[1..13] of char = ('2','3','4','5','6','7','8','9','T','J','Q','K','A');

function TRange.CheckHand(aFirst : Integer; aSecond:Integer) : Boolean;
var
  eHand : string;
  i : Integer;
  eFirst : Integer;
  eSecond : Integer;
begin
  Result := False;
  eFirst := Max(aFirst,aSecond);
  eSecond := Min(aFirst,aSecond);
  eHand := cList[((eFirst-1) div 4) + 1] + cList[((eSecond-1) div 4) + 1];
  if (eFirst-1) div 4 <> (eSecond-1) div 4 then
    if eFirst mod 4 = eSecond mod 4
    then eHand := eHand + 's'
    else eHand := eHand + 'o';
  for i := 0 to FHand.Count - 1 do
    if Fhand[i] = eHand then begin
      Result := True;
      exit;
    end;
end;

function TRange.GetArrayNum(aChr : Char) : Integer;
var
  i: Integer;
begin
  Result := 14;
  for i := 1 to 13 do
    if cList[i] = aChr then Result := i;
end;


constructor TRange.Create(aStr : String);
var
  eList : TStringList;
  i,j : Integer;
  eItem : String;
  eCount : Double;
begin
  FRange := aStr;
  eList := TStringList.Create;
  FHand := TStringList.Create;
  eList.Delimiter := ',';
  eList.CommaText := aStr;
  eCount := 0;
  for i := 0 to eList.count -1 do begin
    eItem := eList[i];
    if Length(eItem) in [2,3]
    then FHand.Add(eItem)
    else if Length(eItem) = 5
         then begin
          for j := GetArrayNum(eItem[Length(eItem)]) to GetArrayNum(eItem[1]) do
            FHand.Add(cList[j] + cList[j]);
         end else begin
           for j := GetArrayNum(eItem[6]) to GetArrayNum(eItem[2]) do
             FHand.Add(eItem[1] + cList[j] + eItem[Length(eItem)]);
         end;
   end;
  for i := 0 to FHand.Count - 1 do begin
    eItem := FHand[i];
    if Length(eItem) = 2
    then eCount := eCount + 6
    else if eItem[3] = 'o'
         then eCount := eCount + 12
         else eCount := eCount + 4;
  end;
  FProcent := FloatToStr(Round(eCount/1326*1000)/10) + '%';
end;


end.
 