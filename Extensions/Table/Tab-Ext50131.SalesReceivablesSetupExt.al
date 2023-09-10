tableextension 50131 SalesReceivablesSetupExt extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; "Student Nos"; Code[20])
        {
            Caption = 'Student Nos';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
}
