pageextension 50256 "Purchase Agent Act Ext.Page.al" extends "Purchase Agent Activities"
{
    layout
    {
        addbefore("Pre-arrival Follow-up on Purchase Orders")
        {
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
}
