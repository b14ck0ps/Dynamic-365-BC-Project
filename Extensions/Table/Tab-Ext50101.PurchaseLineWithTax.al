tableextension 50101 "Purchase Line With Tax" extends "Purchase Line"
{
    fields
    {
        field(50100; Tax; Decimal)
        {
            Caption = 'Tax';
            DataClassification = ToBeClassified;
        }
    }
}
