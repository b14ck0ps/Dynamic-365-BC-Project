codeunit 50139 "Basic Calculation"
{
    trigger OnRun()
    begin
        number1 := 10;
        number2 := 20;
        AddNumber(number1, number2);
    end;

    procedure AddNumber(number1: Integer; number2: Integer)
    var
        result: Integer;
    begin
        result := number1 + number2;
        Message('The result is %1', result);
    end;


    var
        number1: Integer;
        number2: Integer;
}