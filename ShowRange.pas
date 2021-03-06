unit ShowRange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvExControls, JvXPCore, JvXPButtons, fRange,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TRangeViewer = class(TForm)
    pnl1: TJvPanel;
    b1: TJvXPButton;
    b2: TJvXPButton;
    b3: TJvXPButton;
    b4: TJvXPButton;
    b5: TJvXPButton;
    b6: TJvXPButton;
    b7: TJvXPButton;
    b8: TJvXPButton;
    b9: TJvXPButton;
    b10: TJvXPButton;
    b11: TJvXPButton;
    b12: TJvXPButton;
    b13: TJvXPButton;
    b14: TJvXPButton;
    b15: TJvXPButton;
    b16: TJvXPButton;
    b17: TJvXPButton;
    b18: TJvXPButton;
    b19: TJvXPButton;
    b20: TJvXPButton;
    b21: TJvXPButton;
    b22: TJvXPButton;
    b23: TJvXPButton;
    b24: TJvXPButton;
    b25: TJvXPButton;
    b26: TJvXPButton;
    b27: TJvXPButton;
    b28: TJvXPButton;
    b29: TJvXPButton;
    b30: TJvXPButton;
    b31: TJvXPButton;
    b32: TJvXPButton;
    b33: TJvXPButton;
    b34: TJvXPButton;
    b35: TJvXPButton;
    b36: TJvXPButton;
    b37: TJvXPButton;
    b38: TJvXPButton;
    b39: TJvXPButton;
    b40: TJvXPButton;
    b41: TJvXPButton;
    b42: TJvXPButton;
    b43: TJvXPButton;
    b44: TJvXPButton;
    b45: TJvXPButton;
    b46: TJvXPButton;
    b47: TJvXPButton;
    b48: TJvXPButton;
    b49: TJvXPButton;
    b50: TJvXPButton;
    b51: TJvXPButton;
    b52: TJvXPButton;
    b53: TJvXPButton;
    b54: TJvXPButton;
    b55: TJvXPButton;
    b56: TJvXPButton;
    b57: TJvXPButton;
    b58: TJvXPButton;
    b59: TJvXPButton;
    b60: TJvXPButton;
    b61: TJvXPButton;
    b62: TJvXPButton;
    b63: TJvXPButton;
    b64: TJvXPButton;
    b65: TJvXPButton;
    b66: TJvXPButton;
    b67: TJvXPButton;
    b71: TJvXPButton;
    b72: TJvXPButton;
    b73: TJvXPButton;
    b74: TJvXPButton;
    b75: TJvXPButton;
    b76: TJvXPButton;
    b77: TJvXPButton;
    b78: TJvXPButton;
    b79: TJvXPButton;
    b80: TJvXPButton;
    b85: TJvXPButton;
    b86: TJvXPButton;
    b87: TJvXPButton;
    b88: TJvXPButton;
    b89: TJvXPButton;
    b90: TJvXPButton;
    b91: TJvXPButton;
    b92: TJvXPButton;
    b93: TJvXPButton;
    b99: TJvXPButton;
    b100: TJvXPButton;
    b101: TJvXPButton;
    b102: TJvXPButton;
    b103: TJvXPButton;
    b104: TJvXPButton;
    b105: TJvXPButton;
    b106: TJvXPButton;
    b113: TJvXPButton;
    b114: TJvXPButton;
    b115: TJvXPButton;
    b116: TJvXPButton;
    b117: TJvXPButton;
    b118: TJvXPButton;
    b119: TJvXPButton;
    b127: TJvXPButton;
    b128: TJvXPButton;
    b129: TJvXPButton;
    b130: TJvXPButton;
    b131: TJvXPButton;
    b132: TJvXPButton;
    b141: TJvXPButton;
    b142: TJvXPButton;
    b143: TJvXPButton;
    b144: TJvXPButton;
    b145: TJvXPButton;
    b155: TJvXPButton;
    b156: TJvXPButton;
    b157: TJvXPButton;
    b158: TJvXPButton;
    b169: TJvXPButton;
    b170: TJvXPButton;
    b171: TJvXPButton;
    b172: TJvXPButton;
    b173: TJvXPButton;
    b174: TJvXPButton;
    b175: TJvXPButton;
    b176: TJvXPButton;
    b177: TJvXPButton;
    b178: TJvXPButton;
    b179: TJvXPButton;
    b161: TJvXPButton;
    b162: TJvXPButton;
    b163: TJvXPButton;
    b164: TJvXPButton;
    b165: TJvXPButton;
    b166: TJvXPButton;
    b167: TJvXPButton;
    b168: TJvXPButton;
    b180: TJvXPButton;
    b133: TJvXPButton;
    b134: TJvXPButton;
    b135: TJvXPButton;
    b136: TJvXPButton;
    b137: TJvXPButton;
    b138: TJvXPButton;
    b139: TJvXPButton;
    b140: TJvXPButton;
    b120: TJvXPButton;
    b121: TJvXPButton;
    b122: TJvXPButton;
    b123: TJvXPButton;
    b124: TJvXPButton;
    b125: TJvXPButton;
    b126: TJvXPButton;
    b107: TJvXPButton;
    b108: TJvXPButton;
    b109: TJvXPButton;
    b110: TJvXPButton;
    b111: TJvXPButton;
    b112: TJvXPButton;
    b94: TJvXPButton;
    b95: TJvXPButton;
    b96: TJvXPButton;
    b97: TJvXPButton;
    b98: TJvXPButton;
    b81: TJvXPButton;
    b82: TJvXPButton;
    b83: TJvXPButton;
    b84: TJvXPButton;
    b68: TJvXPButton;
    b69: TJvXPButton;
    b70: TJvXPButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowRange(aRange : TRange);
  end;

var
  RangeViewer: TRangeViewer;

implementation

{$R *.dfm}


procedure TRangeViewer.ShowRange(aRange : TRange);
 var
   i,j : Integer;
   eButton : TJvXPButton;
begin
  for i := 0 to pnl1.ControlCount - 1 do
    if (pnl1.Controls[i] is TJvXPButton) then begin
      eButton := pnl1.Controls[i] as TJvXPButton;
      eButton.Enabled := False;
      for j := 0 to aRange.FHand.Count - 1 do
        if aRange.FHand[j] = eButton.Caption then eButton.Enabled := True;
    end;
  Caption := Caption + ' - ' + aRange.FProcent;
  ShowModal;
end;


procedure TRangeViewer.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then Close();
end;

end.
