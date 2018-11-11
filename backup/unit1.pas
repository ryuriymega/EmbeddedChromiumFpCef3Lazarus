unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  StdCtrls, cef3lcl, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Chromium1: TChromium;
    url1: TEdit;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Chromium1.Load(url1.Text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Chromium1.Load(url1.Text);
end;

procedure TForm1.TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

end.

