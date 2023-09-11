pageextension 50142 SalesReceivablesSetupPageExt extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field("Student Nos"; Rec."Student Nos")
            {
                Caption = 'Student Nos.';
                ApplicationArea = All;
            }
            field("Student Appv Nos"; Rec."Student Approval No")
            {
                Caption = 'Student Approval Nos.';
                ApplicationArea = All;
            }
        }
    }
}
