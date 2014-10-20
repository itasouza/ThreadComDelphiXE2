unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.StdCtrls;

  //exemplo de Thread local
type
  Processo = class(TThread)
  private
    { Private declarations }

  protected
    procedure Execute; override;
    procedure Teste;
    procedure Teste2;
  public


end;


type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  conta:Integer;

implementation

{$R *.dfm}

uses untProcessoExterno;


{ Processo }

procedure Processo.Execute;
begin
  inherited;
  Synchronize(Teste);
  Synchronize(Teste2);
end;

procedure TForm1.Button1Click(Sender: TObject);
 var
  Pro : Processo;
begin
  Pro := Processo.Create(False);
  Label1.Caption := IntToStr(conta);
  Pro.FreeOnTerminate:=True;

end;


procedure Processo.Teste;
 var
  Total :Integer;
begin
  Form1.Memo1.Lines.Add('Passei aqui na Thread local 1');
  Total := 10 * 10;
  Form1.Memo1.Lines.Add('este é o valor do total 1 :' + IntToStr(Total));
  conta :=  Total;
  Form1.Memo1.Lines.Add('este é o valor do conta 1 :' + IntToStr(conta));
  Form1.Label1.Caption := IntToStr(conta);
end;


procedure Processo.Teste2;
 var
  Total :Integer;
begin
  Form1.Memo1.Lines.Add('valor da Thread 1'  + IntToStr(conta));
  Form1.Memo1.Lines.Add('Passei aqui na Thread local 2');
  Total := 10 * conta;
  Form1.Memo1.Lines.Add('este é o valor do total 2:' + IntToStr(Total));
  conta :=  Total;
  Form1.Memo1.Lines.Add('este é o valor do conta 2:' + IntToStr(conta));
  Form1.Label2.Caption := IntToStr(conta);
end;


procedure TForm1.Button2Click(Sender: TObject);
 var
  Pro : ProcessoExterno;
begin
  Pro := ProcessoExterno.Create(False);
  Pro.FreeOnTerminate:=True;
end;

end.
