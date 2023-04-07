page 50104 "CarsList"
{
    ApplicationArea = All;
    Caption = 'Cars List';
    PageType = List;
    SourceTable = Cars;
    UsageCategory = Lists;
    CardPageId = "Cars Card";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Plate; Rec.Plate)
                {
                    ApplicationArea = all;
                }
                field(Chassis; Rec.Chassis)
                {
                    ApplicationArea = all;
                }
                field(Brand; Rec.Brand)
                {
                    ApplicationArea = all;
                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = all;
                }
                field("Manufacture Year"; Rec."Manufacture Year")
                {
                    ApplicationArea = all;
                }
                field("Actual Mileage"; Rec."Actual Mileage")
                {
                    ApplicationArea = all;
                }
                field("Last maintenance mileage"; Rec."Last maintenance mileage")
                {
                    ApplicationArea = all;
                }
                field("Last maintenance date"; Rec."Last maintenance date")
                {
                    ApplicationArea = all;
                }
                field("Next maintenance mileage"; rec."Next maintenance mileage")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}
