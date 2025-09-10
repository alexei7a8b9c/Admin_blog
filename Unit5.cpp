//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
#include "Unit5.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm5 *Form5;
//---------------------------------------------------------------------------
__fastcall TForm5::TForm5(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm5::DBGrid1TitleClick(TColumn *Column)
{
// сортировка
 if (ADOTable1->Active)
  if ((ADOTable1->Sort.Pos(Column->FieldName) > 0) && (ADOTable1->Sort.Pos("ASC") > 0))
     ADOTable1->Sort = Column->FieldName + " DESC";
   else ADOTable1->Sort = Column->FieldName + " ASC";        
}
//---------------------------------------------------------------------------
void __fastcall TForm5::FormCreate(TObject *Sender)
{

Form5->DBGrid1->Columns->Items[0]->Width=50;
Form5->DBGrid1->Columns->Items[1]->Width=110;
Form5->DBGrid1->Columns->Items[2]->Width=100;
Form5->DBGrid1->Columns->Items[3]->Width=100;

Form5->DBGrid1->Columns->Items[0]->Title->Caption="Номер";
Form5->DBGrid1->Columns->Items[1]->Title->Caption="Дата";
Form5->DBGrid1->Columns->Items[2]->Title->Caption="Пароль";
Form5->DBGrid1->Columns->Items[3]->Title->Caption="ФИО";

Form5->DBGrid2->Columns->Items[0]->Width=50;
Form5->DBGrid2->Columns->Items[1]->Width=100;
Form5->DBGrid2->Columns->Items[2]->Width=110;

Form5->DBGrid2->Columns->Items[0]->Title->Caption="Номер";
Form5->DBGrid2->Columns->Items[1]->Title->Caption="Пароль";
Form5->DBGrid2->Columns->Items[2]->Title->Caption="Дата";


}
//---------------------------------------------------------------------------




void __fastcall TForm5::Edit5Change(TObject *Sender)
{
if (Form5->Edit5->Text!="")
{
Form5->ADOTable1->Filtered=false;
Form5->ADOTable1->Filter="Pass LIKE '" + Edit5->Text + "%'";
Form5->ADOTable1->Filtered = true;   }
  else
 {     if (Form5->Edit5->Text=="")
    Form5->ADOTable1->Filtered=false;
}
}
//---------------------------------------------------------------------------

void __fastcall TForm5::Edit6Change(TObject *Sender)
{
if (Form5->Edit6->Text!="")
{
Form5->ADOTable1->Filtered=false;
Form5->ADOTable1->Filter="FIO LIKE '" + Edit6->Text + "%'";
Form5->ADOTable1->Filtered = true;   }
  else
 {     if (Form5->Edit6->Text=="")
    Form5->ADOTable1->Filtered=false;
}
}
//---------------------------------------------------------------------------



void __fastcall TForm5::Button1Click(TObject *Sender)
{
Form5->ADOTable2->Delete();
}
//---------------------------------------------------------------------------


void __fastcall TForm5::Button2Click(TObject *Sender)
{
Form2->Show();         
}
//---------------------------------------------------------------------------

