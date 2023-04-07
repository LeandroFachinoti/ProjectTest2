page 50109 "Item Maintenance List"
{
    ApplicationArea = All;
    Caption = 'Item Maintenance List';
    PageType = List;
    SourceTable = "Item Maintenance";
    UsageCategory = Lists;
    CardPageId = "Item Maintenance card";
    Editable = false;



    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Item No."; rec."Item No.")
                {
                    ApplicationArea = All;

                }
                field("Category No."; rec."Category No.")
                {
                    ApplicationArea = all;
                }
                field(Description; rec.Description)
                {
                    ApplicationArea = all;
                }
                field("Mileage 10.000"; rec."Mileage 10.000")
                {
                    ApplicationArea = all;
                }
                field("Mileage 20.000"; rec."Mileage 20.000")
                {
                    ApplicationArea = all;
                }
                field("Mileage 30.000"; rec."Mileage 30.000")
                {
                    ApplicationArea = all;
                }
                field("Mileage 40.000"; rec."Mileage 40.000")
                {
                    ApplicationArea = all;
                }
                field("Mileage 50.000"; rec."Mileage 50.000")
                {
                    ApplicationArea = all;
                }
                field("Mileage 60.000"; rec."Mileage 60.000")
                {
                    ApplicationArea = all;
                }
                field("Mileage 70.000"; rec."Mileage 70.000")
                {
                    ApplicationArea = all;
                }
                field("Mileage 80.000"; rec."Mileage 80.000")
                {
                    ApplicationArea = all;
                }
                field("Mileage 90.000"; rec."Mileage 90.000")
                {
                    ApplicationArea = all;
                }
                field("Mileage 100.000"; rec."Mileage 100.000")
                {
                    ApplicationArea = all;
                }

            }
        }
    }
}