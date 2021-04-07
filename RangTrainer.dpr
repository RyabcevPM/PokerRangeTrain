program RangTrainer;

uses
  Forms,
  main in 'main.pas' {RangeTrainer},
  fRange in 'src\fRange.pas',
  ShowRange in 'ShowRange.pas' {RangeViewer};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Range';
  Application.CreateForm(TRangeTrainer, RangeTrainer);
  Application.CreateForm(TRangeViewer, RangeViewer);
  Application.Run;
end.
