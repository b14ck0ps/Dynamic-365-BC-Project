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

        field(50101; "Student Approval No"; Code[20])
        {
            Caption = 'Student Approval No';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
}
