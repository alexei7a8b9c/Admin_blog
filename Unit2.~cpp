//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "password.h"
#include "Unit2.h"
#include "Unit5.h"
#include "Unit4.h"
#include "Unit3.h"
#include "jpeg.hpp"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm2::DBNavigator1Click(TObject *Sender,
      TNavigateBtn Button)
{
Form2->ADOTable1->Post();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button1Click(TObject *Sender)
{
if(Edit1->Text!="")
if(Edit2->Text!="")
if(Edit3->Text!="")   {
Form2->ADOTable1->Insert();
Form2->ADOTable1->FieldByName("FIO")->Text=Form2->Edit1->Text;
Form2->ADOTable1->FieldByName("Login")->Text=Form2->Edit2->Text;
Form2->ADOTable1->FieldByName("Pass")->Text=Form2->Edit3->Text;
Form2->ADOTable1->Post();
Edit1->Clear();
Edit2->Clear();
Edit3->Clear();
}
Edit1->Clear();
Edit2->Clear();
Edit3->Clear();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button2Click(TObject *Sender)
{
Form2->ADOTable1->Edit();
Form2->ADOTable1->Post();        
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button3Click(TObject *Sender)
{
Form2->ADOTable1->Delete();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::FormCreate(TObject *Sender)
{
Form2->DBGrid1->Columns->Items[0]->Visible=false;
Form2->DBGrid1->Columns->Items[1]->Width=100;
Form2->DBGrid1->Columns->Items[2]->Width=100;
Form2->DBGrid1->Columns->Items[3]->Width=100;
Form2->DBGrid1->Columns->Items[4]->Visible=false;

Form2->DBGrid1->Columns->Items[1]->Title->Caption="ФИО";
Form2->DBGrid1->Columns->Items[2]->Title->Caption="Логин";
Form2->DBGrid1->Columns->Items[3]->Title->Caption="Пароль";

// Картинка
 if(!(TBlobField*)ADOTable1->FieldByName("Img_1")->IsNull){
       if(!Image1->Visible)Image1->Visible=true;
       TMemoryStream* strm = new TMemoryStream;
       TJPEGImage *ptJpg=new TJPEGImage;
        ((TGraphicField*)ADOTable1->FieldByName("Img_1"))->SaveToStream(strm);
        strm->Seek(0,0);
        if (*(Word*)strm->Memory == 0xD8FF)Image1->Picture->Graphic=ptJpg;
        Image1->Picture->Graphic->LoadFromStream(strm);
        delete strm;
        delete ptJpg;
      }else
       
      Image1->Visible=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Edit4Change(TObject *Sender)
{
if (Form2->Edit4->Text!="")
{
Form2->ADOTable1->Filtered=false;
Form2->ADOTable1->Filter="FIO LIKE '" + Edit4->Text + "%'";
Form2->ADOTable1->Filtered = true;   }
  else
 {     if (Form2->Edit4->Text=="")
    Form2->ADOTable1->Filtered=false;
}
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Edit5Change(TObject *Sender)
{
if (Form2->Edit5->Text!="")
{
Form2->ADOTable1->Filtered=false;
Form2->ADOTable1->Filter="Login LIKE '" + Edit5->Text + "%'";
Form2->ADOTable1->Filtered = true;   }
  else
 {     if (Form2->Edit5->Text=="")
    Form2->ADOTable1->Filtered=false;
}
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Edit6Change(TObject *Sender)
{
if (Form2->Edit6->Text!="")
{
Form2->ADOTable1->Filtered=false;
Form2->ADOTable1->Filter="Pass LIKE '" + Edit6->Text + "%'";
Form2->ADOTable1->Filtered = true;   }
  else
 {     if (Form2->Edit6->Text=="")
    Form2->ADOTable1->Filtered=false;
}
}
//---------------------------------------------------------------------------

void __fastcall TForm2::DBGrid1TitleClick(TColumn *Column)
{
// сортировка
 if (ADOTable1->Active)
  if ((ADOTable1->Sort.Pos(Column->FieldName) > 0) && (ADOTable1->Sort.Pos("ASC") > 0))
     ADOTable1->Sort = Column->FieldName + " DESC";
   else ADOTable1->Sort = Column->FieldName + " ASC";         
}
//---------------------------------------------------------------------------



void __fastcall TForm2::DBGrid1CellClick(TColumn *Column)
{
Form4->Show();
Form2->ADOTable1->Edit();
Form4->Edit1->Text=Form2->ADOTable1->FieldByName("FIO")->Text;
Form4->Edit2->Text=Form2->ADOTable1->FieldByName("Login")->Text;
Form4->Edit3->Text=Form2->ADOTable1->FieldByName("Pass")->Text;
Form2->ADOTable1->Post();

// Картинка
 if(!(TBlobField*)ADOTable1->FieldByName("Img_1")->IsNull){
       if(!Image1->Visible)Image1->Visible=true;
       TMemoryStream* strm = new TMemoryStream;
       TJPEGImage *ptJpg=new TJPEGImage;
        ((TGraphicField*)ADOTable1->FieldByName("Img_1"))->SaveToStream(strm);
        strm->Seek(0,0);
        if (*(Word*)strm->Memory == 0xD8FF)Image1->Picture->Graphic=ptJpg;
        Image1->Picture->Graphic->LoadFromStream(strm);
        delete strm;
        delete ptJpg;
      }else
       
      Image1->Visible=false;
}
//---------------------------------------------------------------------------



void __fastcall TForm2::Button4Click(TObject *Sender)
{
if (OpenPictureDialog1->Execute())
  {
    AnsiString CurrentFile = OpenPictureDialog1->FileName;
    Image1->Picture->LoadFromFile(CurrentFile);
  }
  Image1->Visible=true;        
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button5Click(TObject *Sender)
{
ADOTable1->Edit();
       TMemoryStream* strm = new TMemoryStream();
       Image1->Picture->Graphic->SaveToStream(strm);
       ((TGraphicField*)Form2->ADOTable1->FieldByName("Img_1"))->LoadFromStream(strm);
       delete strm;
       Form2->ADOTable1->Post();
        Image1->Visible=true;        
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Image1Click(TObject *Sender)
{
Image1->Visible=true;         
}
//---------------------------------------------------------------------------

