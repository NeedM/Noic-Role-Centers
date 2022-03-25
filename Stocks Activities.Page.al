
page 50257 "Stocks Activities"
{
    Caption = 'Stocks Activities';
    PageType = CardPart;
    RefreshOnActivate = true;
    SourceTable = "Stocks Activities Cue";
    ShowFilter = false;

    layout
    {
        area(Content)
        {

            cuegroup(PickInstruction)
            {
                caption = 'Pick Instructions';
                field("Pick Instruction - Open"; Rec."Pick Instructions - Open")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Pick Instruction List";
                    ToolTip = 'Specifies the Number of Open Pick Instructions';
                }
                field("Pick Instruction - Released"; Rec."Pick Instructions - Released")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Pick Instruction List";
                    ToolTip = 'Specifies the Number of Open Pick Instructions';
                }
                field("Pick Instruction - Completed"; Rec."Pick Instructions - Completed")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Pick Instruction List";
                    ToolTip = 'Specifies the Number of Open Pick Instructions';
                }
            }

            cuegroup(SalesOrders)
            {
                caption = 'Sales Orders';
                field("Sales Orders - Released"; Rec."Sales Orders - Released")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Sales Order List";
                    ToolTip = 'Specifies the number of Released Sales Orders';
                }
                field("Sales Orders-Pending Approval"; Rec."Sales Orders-Pending Approval")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Sales Order List";
                    ToolTip = 'Specifies the number of the Open Sales Orders Pending Approval.';
                }
                field("Sales Orders - Open"; Rec."Sales Orders - Open")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Sales Order List";
                    ToolTip = 'Specifies the number of the Open Sales Orders Open.';
                }
            }
            cuegroup(BlanketOrders)
            {
                caption = 'Banket Orders';
                field("Banket Sales Orders - Released"; Rec."Banket Sales Orders - Released")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Blanket Sales Orders";
                    ToolTip = 'Specifies the number of the Released Blanket Sales Orders.';
                }
                field("Blanket Sales Order Open"; Rec."Blanket Sales Order Open")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Blanket Sales Orders";
                    ToolTip = 'Specifies the value of the Open Blanket Sales Orders.';
                }
            }
            cuegroup(PurchaseRequisitions)
            {
                Caption = 'Purchase Requisitions';
                field("Purchase Requisitions - Open"; Rec."Purchase Requisitions - Open")
                {
                    ToolTip = 'Specifies the number of the Purchase Requisitions - Open.';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Purchase Requisitions";
                }
                field("Purchase Req Pending Approval"; Rec."Purchase Req Pending Approval")
                {
                    ToolTip = 'Specifies the number of the Purchase Requisitions Pending Approval.';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Purchase Requisitions";
                }
                field("Purchase Requisitions Released"; Rec."Purchase Requisitions Released")
                {
                    ToolTip = 'Specifies the number of the Released Purchase Requisitions';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Purchase Requisitions";
                }
            }
            cuegroup(StockRequisitions)
            {
                Caption = 'Stock Requisitions';
                field("Stock Requisitions - Open"; Rec."Stock Requisitions - Open")
                {
                    ToolTip = 'Specifies the number of the Open Stock Requisitions';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Purchase Requisitions";
                }
                field("Stock Requisitions - Pending"; Rec."Stock Requisitions - Pending")
                {
                    ToolTip = 'Specifies the number of the Stock Requisitions Pending Approval';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Purchase Requisitions";
                }
                field("Stock Requisitions - Released"; Rec."Stock Requisitions - Released")
                {
                    ToolTip = 'Specifies the number of the Released Stock Requisitions';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Purchase Requisitions";
                }

            }

        }
    }

    trigger OnOpenPage()
    begin
        Rec.Reset();
        If not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;


    trigger OnAfterGetRecord()
    begin

    end;
}