unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmMain = class(TForm)
    ListView1: TListView;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.FormCreate(Sender: TObject);
var
  AItem: TListViewItem;
  i: Integer;
begin

  // We are adding 100 items to ListView1
  // and filling their names.
  for i := 0 to 100 do
  begin

    with ListView1 do
    begin

      AItem := Items.Add;
      AItem.Text := 'Item Val ' + IntToStr(i);

    end;

  end;

end;

procedure TfrmMain.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin

  // Old usage was like this:
  //
  // Label1.Text := ListView1.Selected.Text;
  //
  // Now we have to cast it as such:

  Label1.Text := TListViewItem(ListView1.Selected).Text;


  // New usage of TListViewItem's selected item properties
  //
  // TListViewItem(ListView1.Selected).ButtonText;
  // TListViewItem(ListView1.Selected).Text;
  // TListViewItem(ListView1.Selected).Index;
  // TListViewItem(ListView1.Selected).Detail;
  // ...

end;

end.
