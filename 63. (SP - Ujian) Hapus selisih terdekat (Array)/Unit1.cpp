//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
int n, A[10][10], total;
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


void __fastcall TForm1::InputClick(TObject *Sender)
{
 int x;
 x=StrToInt(Edit1->Text);
 Edit1->Clear();
 Edit1->SetFocus();

 if (n>=9)
    {
       ShowMessage("data telah penuh");
    }
 else
    {
       if (n==0)
          {
             A[0][n]=x;
          }
       else
          {
             int pindah=n;
             while (pindah>0)
                {
                   A[0][pindah]=A[0][pindah-1];
                   pindah--;
                }
             A[0][pindah]=x;
          }
       total=total+x;
       Edit2->Text=total;
    }

 Hapus->Enabled=true;
 ListBox1->Clear();
 int tampil=0;
 while (tampil<=n)
    {
       ListBox1->Items->Add(A[0][tampil]);
       tampil++;
    }
 n++;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::HapusClick(TObject *Sender)
{
int x;
x=StrToInt(Edit1->Text);

if (x>total)
   {
      ShowMessage("pesanan terlalu banyak");
   }
else
   {
      int cariselisih, x2, min, banding;
      total=total-x;
      while (x>0)
         {
            cariselisih=0;
            while (cariselisih<n)
               {
                  x2=x;
                  if (x2>=A[0][cariselisih])
                     {
                        x2=x2-A[0][cariselisih];
                     }
                  else
                     {
                        x2=A[0][cariselisih]-x2;
                     }
                  A[1][cariselisih]=x2;
                  cariselisih++;
               }

            min=0, banding=1;
            while (banding<n)
               {
                  if (A[1][min]>A[1][banding])
                     {
                        min=banding;
                     }
                  banding++;
               }

            if (x>=A[0][min])
               {
                  x=x-A[0][min];
                  while (min<n)
                     {
                        A[0][min]=A[0][min+1];
                        min++;
                     }
                  n--;
               }
            else
               {
                  A[0][min]=A[0][min]-x;
                  x=0;
               }
         }
      Edit2->Text=total;
      ListBox1->Clear();
      int tampil=0;
      while (tampil<n)
         {
            ListBox1->Items->Add(A[0][tampil]);
            tampil++;
         }
      if (total==0)
         {
            Hapus->Enabled=false;
         }
   }
}
//---------------------------------------------------------------------------

