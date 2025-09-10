//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
#include "Unit4.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm4 *Form4;
//---------------------------------------------------------------------------
__fastcall TForm4::TForm4(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm4::Button1Click(TObject *Sender)
{
Form2->ADOTable1->Edit();
Form2->ADOTable1->FieldByName("FIO")->Text=Form4->Edit1->Text;
Form2->ADOTable1->FieldByName("Login")->Text=Form4->Edit2->Text;
Form2->ADOTable1->FieldByName("Pass")->Text=Form4->Edit3->Text;
Form2->ADOTable1->Post();
Form4->Close();
}
//---------------------------------------------------------------------------
