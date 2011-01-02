unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, DBClient, ExtCtrls, Wwdbigrd,
  Wwdbgrid;

type
  TForm1 = class(TForm)
    cds: TClientDataSet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    cdsIndex: TIntegerField;
    cdsChar: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Edit7: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Button1: TButton;
    Panel2: TPanel;
    cdsOffset: TIntegerField;
    cdsWidth: TIntegerField;
    cdsHeight: TIntegerField;
    wwDBGrid1: TwwDBGrid;
    cdsPicture: TClientDataSet;
    dsPicture: TDataSource;
    cdsPicturep1: TIntegerField;
    cdsPicturep2: TIntegerField;
    cdsPicturep3: TIntegerField;
    cdsPicturep4: TIntegerField;
    cdsPicturep5: TIntegerField;
    cdsPicturep6: TIntegerField;
    cdsPicturep7: TIntegerField;
    cdsPicturep8: TIntegerField;
    cdsPicturep9: TIntegerField;
    cdsPicturep10: TIntegerField;
    cdsPicturep11: TIntegerField;
    cdsPicturep12: TIntegerField;
    cdsPicturep13: TIntegerField;
    cdsPicturep14: TIntegerField;
    cdsPicturep15: TIntegerField;
    cdsPicturep16: TIntegerField;
    cdsPicturep17: TIntegerField;
    cdsPicturep18: TIntegerField;
    cdsPicturep19: TIntegerField;
    cdsPicturep20: TIntegerField;
    cdsPicturep21: TIntegerField;
    cdsPicturep22: TIntegerField;
    cdsPicturep23: TIntegerField;
    cdsPicturep24: TIntegerField;
    cdsPicturep25: TIntegerField;
    cdsPicturep26: TIntegerField;
    cdsPicturep27: TIntegerField;
    cdsPicturep28: TIntegerField;
    cdsPicturep29: TIntegerField;
    cdsPicturep30: TIntegerField;
    cdsPicturep31: TIntegerField;
    cdsPicturep32: TIntegerField;
    cdsPictureIndex: TIntegerField;
    cdsPictureOrder: TIntegerField;
    cdsVertical: TIntegerField;
    Button2: TButton;
    cdsUnknown: TIntegerField;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Button3: TButton;
    Button4: TButton;
    OpenDialog1: TOpenDialog;
    Button5: TButton;
    Button6: TButton;
    cdsUnknown3: TIntegerField;
    cdsUnknown2: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Button2Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure wwDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
 var
  F: tfilestream;
  Buffer: PChar;
  i: integer;
  k,l: integer;
  r: byte;
  s: string;
  MemSize: integer;
  g: TDataSetNotifyEvent;
  filename: string;
begin
OpenDialog1.Execute;
g := cds.AfterScroll;
cds.AfterScroll := nil;
cds.DisableControls;
cdsPicture.DisableControls;
try
F:= tfilestream.create(opendialog1.FileName, fmOpenRead	);
//MemSize := 4;
//Buffer := AllocMem(MemSize);
F.ReadBuffer(i,4);
edit1.text := inttostr(i);
F.ReadBuffer(i,4);
edit2.text := inttostr(i);
F.ReadBuffer(i,4);
edit3.text := inttostr(i);
F.ReadBuffer(i,4);
edit4.text := inttostr(i);
F.ReadBuffer(i,4);
edit5.text := inttostr(i);
F.ReadBuffer(i,4);
edit8.text := inttostr(i);
F.ReadBuffer(i,4);
edit6.text := inttostr(i);
F.ReadBuffer(i,4);
edit7.text := inttostr(i);
//edit1.SetTextBuf(Buffer);
//freemem(buffer,memsize);
for k := 0 to 255 do begin
  cds.Insert;
  F.ReadBuffer(i,1);
  cds.FieldByName('Index').AsInteger := k;
  F.ReadBuffer(i,1);
  cds.FieldByName('Char').AsString := chr(k) ;
  cds.Post;
end;
for k := 0 to 255 do begin
  cds.locate('Index', k, []);
  cds.edit;
  F.ReadBuffer(i,4);
  cds.fieldbyname('Offset').asinteger := i;


//F.ReadBuffer(i,2);
F.ReadBuffer(r,1);
   cds.fieldbyname('Unknown').asinteger := r;
F.ReadBuffer(r,1);
   cds.fieldbyname('Unknown2').asinteger := r;

F.ReadBuffer(r,1);
i := r;
if i > 128 then i := i - 256;
   cds.fieldbyname('Vertical').asinteger := i;

F.ReadBuffer(r,1);
   cds.fieldbyname('Unknown3').asinteger := r;
//bintostr

//  F.ReadBuffer(i,1);
//--  F.ReadBuffer(i,1);








  F.ReadBuffer(i,4);
  cds.fieldbyname('Width').asinteger := i;
F.ReadBuffer(i,4);
  cds.fieldbyname('Height').asinteger := i;
//   cds.fieldbyname('Vertical').asinteger := - (cds.fieldbyname('height').asinteger - cds.fieldbyname('Vertical').asinteger);
//   if cds.fieldbyname('Vertical').asinteger > 20 then cds.fieldbyname('Vertical').asinteger := 0;
end;

cds.first;
while not cds.Eof do begin

  F.Seek(4640 + cds.fieldbyname('Offset').AsInteger, soFromBeginning);
  for k := 0 to cdsHeight.AsInteger - 1 do begin
    cdsPicture.Insert;
    cdsPictureOrder.asinteger := k;
    cdsPictureIndex.AsInteger := cdsIndex.asinteger;
    for l := 0 to cdsWidth.AsInteger - 1 do begin
      F.ReadBuffer(i,1);

      cdsPicture.FieldByName('p' + inttostr(l + 1)).AsInteger := i

    end;

    cdsPicture.post;
  end;

  cds.next;
end;
f.Free;
finally
cds.AfterScroll := g;
cds.EnableControls;
cdsPicture.EnableControls;
cds.First;
end;

end;

procedure TForm1.cdsAfterScroll(DataSet: TDataSet);
begin
  cdsPicture.Filter := 'Index = ' + cdsIndex.AsString;
  cdsPicture.filtered := true;
end;

procedure TForm1.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (strtoint(copy(Field.FieldName,2,length(field.FieldName))) > cdsWidth.AsInteger) then
    Abrush.Color := clRed

  else if (Field.FieldName <> 'Index') and (cdsPicture.FieldByName(Field.FieldName).AsInteger = 255) then
    Abrush.Color := clBlack
  else   if (Field.FieldName <> 'Index') and (cdsPicture.FieldByName(Field.FieldName).AsInteger = 128) then
    ABrush.Color := clSilver;

end;

procedure TForm1.Button2Click(Sender: TObject);
 var
  F: tfilestream;
  Buffer: PChar;
  i: integer;
  k,l: integer;
  s: string;
  MemSize: integer;
  g: TDataSetNotifyEvent;
  MaxWG: integer;
  MaxHG: integer;
  r: Byte;
  WC: integer;
  WT: integer;
  HC: integer;
  Offset: integer;
begin
{
MaxWG := 0;
MaxHG := 0;

cds.First;
while not cds.Eof do begin
  WC := 0;
  HC := 0;
  cdsPicture.First;
  while not cdsPicture.Eof do begin
    HC := HC + 1;
    WT := 0;
    for k := 1 to 32 do begin
      if not cdsPicture.fieldbyname('p' + inttostr(k)).IsNull then WT := k;
      if WC < WT then WC := WT;
    end;
    cdsPicture.next;
  end;
  if MaxWG < WC then MaxWG := WC;

  cds.Next;
end;
edit3.Text := inttostr(MaxWG);
edit4.Text := inttostr(MaxHG);
}
cds.DisableControls;
cdsPicture.DisableControls;
try
Offset := 0;
cds.First;
while not cds.Eof do begin
  cds.Edit;
  cdsOffset.AsInteger := Offset;
  Offset := Offset + cdsWidth.AsInteger * cdsHeight.AsInteger;
  cds.Next;
end;
edit2.text := inttostr(offset);
DeleteFile(opendialog1.FileName);
F:= tfilestream.create(opendialog1.FileName, fmCreate	);

i := strtoint(edit1.text);
F.WriteBuffer(i,4);
i := strtoint(edit2.text);
F.WriteBuffer(i,4);
i := strtoint(edit3.text);
F.WriteBuffer(i,4);
i := strtoint(edit4.text);
F.WriteBuffer(i,4);
i := strtoint(edit5.text);
F.WriteBuffer(i,4);
i := strtoint(edit8.text);
F.WriteBuffer(i,4);
i := strtoint(edit6.text);
F.WriteBuffer(i,4);
i := strtoint(edit7.text);
F.WriteBuffer(i,4);
cds.First;
while not cds.Eof do begin
  i := cds.fieldbyname('Index').asinteger;
  F.WriteBuffer(i, 1);
  i := 0;
  F.WriteBuffer(i, 1);
  cds.Next;
end;
cds.First;
while not cds.Eof do begin
  i := cds.fieldbyname('Offset').asinteger;
  F.WriteBuffer(i, 4);
  i := cds.fieldbyname('Unknown').asinteger;
  r := i;
  F.WriteBuffer(r, 1);
  i := cds.fieldbyname('Unknown2').asinteger;
  if i < 0 then i := 256 + i;
  r := i;
  F.WriteBuffer(r, 1);
  i := cds.fieldbyname('Vertical').asinteger;
  r := i;
  F.WriteBuffer(r, 1);
  i := cds.fieldbyname('Unknown3').asinteger;
  r := i;
  F.WriteBuffer(r, 1);
  i := cds.fieldbyname('Width').asinteger;
  F.WriteBuffer(i, 4);
  i := cds.fieldbyname('Height').asinteger;
  F.WriteBuffer(i, 4);

  cds.Next;
end;
cds.first;
while not cds.eof do begin
  while not cdsPicture.Eof do begin
    for k := 1 to cdsWidth.AsInteger do begin
      i := cdsPicture.fieldbyname('p' + inttostr(k)).asinteger;
//      if not (cdsPicture.fieldbyname('p' + inttostr(k)).IsNull) then
      F.WriteBuffer(i,1);
    end;
    cdsPicture.next;
  end;
  cds.next;
end;

f.Free;
finally
  cds.EnableControls;
  cdsPicture.EnableControls;
end;

end;

procedure TForm1.Panel4Click(Sender: TObject);
begin
  cdsPicture.edit;
  cdsPicture.fieldbyname(wwdbgrid1.SelectedField.FieldName).AsInteger := 0;
  cdsPicture.post;
end;

procedure TForm1.Panel5Click(Sender: TObject);
begin
  cdsPicture.edit;
  cdsPicture.fieldbyname(wwdbgrid1.SelectedField.FieldName).AsInteger := 128;
  cdsPicture.post;
end;

procedure TForm1.Panel6Click(Sender: TObject);
begin
  cdsPicture.edit;
  cdsPicture.fieldbyname(wwdbgrid1.SelectedField.FieldName).AsInteger := 255;
    cdsPicture.post;
end;

procedure TForm1.wwDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i:integer;
begin
if Button = mbLeft then begin
i := 255;
if ssShift in Shift then i := 128;
if ssCtrl in Shift then i := 0;
if cdsPicture.Active then begin
  cdsPicture.edit;
  cdsPicture.fieldbyname(wwdbgrid1.SelectedField.FieldName).AsInteger := i;
  cdsPicture.post;
end;
end;
if Button = mbRight then begin

end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  cds.Edit;
  cdsWidth.asinteger := cdsWidth.asinteger + 1;
  cds.Post;
  cdsAfterScroll(nil);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  cds.Edit;
  cdsWidth.asinteger := cdsWidth.asinteger - 1;
  cds.Post;
end;

procedure TForm1.Button5Click(Sender: TObject);
var order: integer;
begin
  cdsPicture.Last;
  order := cdsPictureOrder.AsInteger;

    cdsPicture.Append;
    cdsPicture.FieldByName('Index').asinteger := cdsIndex.asinteger;
    cdsPictureOrder.AsInteger := order + 1;
    cdsPicture.Post;
    cds.Edit;
    cdsHeight.AsInteger := cdsHeight.AsInteger + 1;
    cds.Post;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin

    cdsPicture.Delete;
    cds.Edit;
    cdsHeight.AsInteger := cdsHeight.AsInteger - 1;
    cds.Post;

end;

end.
