page 50102 "Cars Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Cars;



    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Plate; rec.Plate)
                {
                    ApplicationArea = All;
                    NotBlank = true;
                }
                field(Chassis; rec.Chassis)
                {
                    ApplicationArea = All;
                    NotBlank = true;
                }
                field(Brand; rec.Brand)
                {
                    ApplicationArea = All;
                }
                field(Model; rec.Model)
                {
                    ApplicationArea = All;
                }
                field("Manufacture Year"; rec."Manufacture Year")
                {
                    ApplicationArea = All;
                }
                field("Actual Mileage"; rec."Actual Mileage")
                {
                    ApplicationArea = All;
                }
                field("Last Maintenance Date"; rec."Last maintenance date")
                {
                    ApplicationArea = All;
                }
                field("Last Maintenance Mileage"; rec."Last maintenance mileage")
                {
                    ApplicationArea = All;
                }

            }

            group(Maintenance)
            {
                Caption = 'Maintenance List';

                part("Car Maintenance List"; "Car Maintenance List")
                {
                    Editable = true;
                    SubPageLink = Plate = field(Plate);
                }
            }
        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }

    // var
    //     myInt: Integer;
}