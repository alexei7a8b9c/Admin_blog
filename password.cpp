//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "password.h"
#include "Unit2.h"
#include "Unit3.h"
#include "Unit5.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
if (Edit1->Text!="")
if (Edit2->Text!="")
{
Form2->ADOTable1->Filtered=false;
Form2->ADOTable1->Filter="Pass LIKE '" + Edit2->Text + "%'";
Form2->ADOTable1->Filtered = true;


if (Form2->ADOTable1->FieldByName("Pass")->Text==Form1->Edit2->Text)
if (Form2->ADOTable1->FieldByName("Login")->Text==Form1->Edit1->Text)
{

if (Edit2->Text!="")
if (Edit1->Text=="admin")
{
Form1->ADOTable1->Insert();
DateTimePicker1->DateTime=Now();
Form1->ADOTable1->FieldByName("Pass")->Text=Form1->Edit2->Text;
Form1->ADOTable1->FieldByName("Date")->Value=Form1->DateTimePicker1->DateTime;
Form1->ADOTable1->Post();
Edit1->Clear();
Edit2->Clear();
Form5->Show();
}

else if (Edit1->Text!="")
if (Edit2->Text!="")
{
Form1->ADOTable1->Insert();
DateTimePicker1->DateTime=Now();
Form1->ADOTable1->FieldByName("Pass")->Text=Form1->Edit2->Text;
Form1->ADOTable1->FieldByName("Date")->Value=Form1->DateTimePicker1->DateTime;
Form1->ADOTable1->Post();
Form3->Show();
}


Edit1->Clear();
Edit2->Clear();
Form2->ADOTable1->Filtered=false;
}
   }
Edit1->Clear();
Edit2->Clear();
}
//---------------------------------------------------------------------------





void __fastcall TForm1::FormCreate(TObject *Sender)
{
DateTimePicker1->DateTime=Now();        
}
//---------------------------------------------------------------------------


