page 50106 "Car Maintenance List"
{
    ApplicationArea = All;
    PageType = ListPart;
    SourceTable = "Car maintenance table";
    CardPageId = "Car maintenance Card";
    Editable = false;
    InsertAllowed = false;
    //UsageCategory = Lists;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Invoice No."; Rec."Invoice No.")
                {
                    ApplicationArea = All;
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                }
                field("Maintenance Cust"; Rec."Maintenance Cust")
                {
                    ApplicationArea = All;
                }
                field("Maintenance Mileage"; Rec."Maintenance Mileage")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
