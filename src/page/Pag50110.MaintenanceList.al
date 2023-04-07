page 50110 "Maintenance List"
{
    ApplicationArea = All;
    Caption = 'Maintenance List';
    PageType = List;
    SourceTable = "Car maintenance table";
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Item Maintenance card";


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
                field(Plate; rec.Plate)
                {
                    ApplicationArea = all;
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
