page 50264 "Stocks Manager RC"
{
    Caption = 'Stocks Manager';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            part(Control104; "Headline RC Project Manager")
            {
                ApplicationArea = Basic, Suite;
            }
            // part(Control1901851508; "SO Processor Activities")
            // {
            //     AccessByPermission = TableData "Sales Shipment Header" = R;
            //     ApplicationArea = Basic, Suite;
            // }

            part("Stocks Activities"; "Stocks Activities")
            {
                ApplicationArea = Suite;
            }
            part("User Tasks Activities"; "User Tasks Activities")
            {
                ApplicationArea = Suite;
            }
            // part("Emails"; "Email Activities")
            // {
            //     ApplicationArea = Basic, Suite;
            // }
            part(ApprovalsActivities; "Approvals Activities")
            {
                ApplicationArea = Suite;
            }

            part(Control4; "My Job Queue")
            {
                ApplicationArea = Basic, Suite;
                Visible = false;
            }
            part(Control1905989608; "My Items")
            {
                AccessByPermission = TableData "My Item" = R;
                ApplicationArea = Basic, Suite;
            }

            part(Control21; "Report Inbox Part")
            {
                AccessByPermission = TableData "Report Inbox" = R;
                ApplicationArea = Suite;
            }
            systempart(Control1901377608; MyNotes)
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
        area(embedding)
        {
            ToolTip = 'view KPIs, and access your favorite items and customers.';
            action(Items)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Items';
                Image = Item;
                RunObject = Page "Item List";
                ToolTip = 'View or edit detailed information for the products that you trade in. The item card can be of type Inventory or Service to specify if the item is a physical unit or a labor time unit. Here you also define if items in inventory or on incoming orders are automatically reserved for outbound documents and whether order tracking links are created between demand and supply to reflect planning actions.';
            }
            action("Item Journals")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Item Journals';
                RunObject = Page "Item Journal Batches";
                RunPageView = WHERE("Template Type" = CONST(Item),
                                    Recurring = CONST(false));
                ToolTip = 'Post item transactions directly to the item ledger to adjust inventory in connection with purchases, sales, and positive or negative adjustments without using documents. You can save sets of item journal lines as standard journals so that you can perform recurring postings quickly. A condensed version of the item journal function exists on item cards for quick adjustment of an items inventory quantity.';
            }
            action("Physical Inventory Journal")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Physical Inventory Journals';
                RunObject = Page "Phys. Inventory Journal";
                // RunPageView = WHERE("Template Type" = CONST(Item),
                //                     Recurring = CONST(false));
                ToolTip = '';
            }

            action("Transfer Orders")
            {
                ApplicationArea = Location;
                Caption = 'Transfer Orders';
                RunObject = Page "Transfer Orders";
                ToolTip = 'Move inventory items between company locations. With transfer orders, you ship the outbound transfer from one location and receive the inbound transfer at the other location. This allows you to manage the involved warehouse activities and provides more certainty that inventory quantities are updated correctly.';
            }
            action("Purchase Requisitions Archived")
            {
                ApplicationArea = Location;
                Caption = 'Archived Purchase Requisitions';
                //  Visible = false;
                RunObject = Page "Archived Purchase Requisitions";
                ToolTip = 'Move inventory items between company locations. With transfer orders, you ship the outbound transfer from one location and receive the inbound transfer at the other location. This allows you to manage the involved warehouse activities and provides more certainty that inventory quantities are updated correctly.';
            }
            action("Stock Requisitions Archived")
            {
                ApplicationArea = Location;
                Caption = 'Archived Stock Requisitions';
                RunObject = Page "Archived Stock Requisitions";
                ToolTip = 'Move inventory items between company locations. With transfer orders, you ship the outbound transfer from one location and receive the inbound transfer at the other location. This allows you to manage the involved warehouse activities and provides more certainty that inventory quantities are updated correctly.';
            }
        }
        area(sections)
        {
            group(Action62)
            {
                Caption = 'Inventory';
                ToolTip = 'Manage physical or service-type items that you trade in by setting up item cards with rules for pricing, costing, planning, reservation, and tracking. Set up storage places or warehouses and how to transfer between such locations. Count, adjust, reclassify, or revalue inventory.';
                action(Action93)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Items';
                    Image = Item;
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Item List";
                    ToolTip = 'View or edit detailed information for the products that you trade in. The item card can be of type Inventory or Service to specify if the item is a physical unit or a labor time unit. Here you also define if items in inventory or on incoming orders are automatically reserved for outbound documents and whether order tracking links are created between demand and supply to reflect planning actions.';
                }
                action(Action96)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Item Journals';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Item Journal Batches";
                    RunPageView = WHERE("Template Type" = CONST(Item),
                                        Recurring = CONST(false));
                    ToolTip = 'Post item transactions directly to the item ledger to adjust inventory in connection with purchases, sales, and positive or negative adjustments without using documents. You can save sets of item journal lines as standard journals so that you can perform recurring postings quickly. A condensed version of the item journal function exists on item cards for quick adjustment of an items inventory quantity.';
                }
                action("Item Charges")
                {
                    ApplicationArea = Suite;
                    Caption = 'Item Charges';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Item Charges";
                    ToolTip = 'View or edit the codes for item charges that you can assign to purchase and sales transactions to include any added costs, such as freight, physical handling, and insurance that you incur when purchasing or selling items. This is important to ensure correct inventory valuation. For purchases, the landed cost of a purchased item consists of the vendor''s purchase price and all additional direct item charges that can be assigned to individual receipts or return shipments. For sales, knowing the cost of shipping sold items can be as vital to your company as knowing the landed cost of purchased items.';
                }
                action("Item Attributes")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Item Attributes';
                    RunObject = Page "Item Attributes";
                    ToolTip = 'Assign item attribute values to your items to enable rich searching and sorting options. When customers inquire about an item, either in correspondence or in an integrated web shop, they can then ask or search according to characteristics, such as height and model year. You can also assign item attributes to item categories, which then apply to the items that use the item categories in question.';
                }
                action("Item Tracking")
                {
                    ApplicationArea = ItemTracking;
                    Caption = 'Item Tracking';
                    RunObject = Page "Avail. - Item Tracking Lines";
                    ToolTip = 'Assign serial numbers and lot numbers to any outbound or inbound document for quality assurance, recall actions, and to control expiration dates and warranties. Use the Item Tracing window to trace items with serial or lot numbers backwards and forward in their supply chain';
                }
                action("Item Reclassification Journals")
                {
                    ApplicationArea = Warehouse;
                    Caption = 'Item Reclassification Journals';
                    RunObject = Page "Item Journal Batches";
                    RunPageView = WHERE("Template Type" = CONST(Transfer),
                                        Recurring = CONST(false));
                    ToolTip = 'Change information on item ledger entries, such as dimensions, location codes, bin codes, and serial or lot numbers.';
                }
                action("Phys. Inventory Journals")
                {
                    ApplicationArea = Warehouse;
                    Caption = 'Phys. Inventory Journals';
                    RunObject = Page "Item Journal Batches";
                    RunPageView = WHERE("Template Type" = CONST("Phys. Inventory"),
                                        Recurring = CONST(false));
                    ToolTip = 'Select how you want to maintain an up-to-date record of your inventory at different locations.';
                }
                action("Assembly Orders")
                {
                    ApplicationArea = Assembly;
                    Caption = 'Assembly Orders';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Assembly Orders";
                    ToolTip = 'Combine components in simple processes without the need of manufacturing functionality. Sell assembled items by building the item to order or by picking from stock.';
                }
                action("Drop Shipments")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Drop Shipments';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Sales Lines";
                    RunPageView = WHERE("Drop Shipment" = CONST(true));
                    ToolTip = 'Minimize delivery time and inventory cost by having items shipped from your vendor directly to your customer. This simply requires that you mark the sales order for drop shipment and then create a linked purchase order with the customer specified as the recipient. ';
                }
                action(Locations)
                {
                    ApplicationArea = Location;
                    Caption = 'Locations';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Location List";
                    ToolTip = 'Manage the different places or warehouses where you receive, process, or ship inventory to increase customer service and keep inventory costs low.';
                }
            }

#if not CLEAN18
            group(SetupAndExtensions)
            {
                Caption = 'Setup & Extensions';
                Image = Setup;
                ToolTip = 'Overview and change system and application settings, and manage extensions and services';
                //hide
                Visible = false;
                ObsoleteState = Pending;
                ObsoleteReason = 'The new common entry points to all Settings is introduced in the app bar''s cogwheel menu (aligned with the Office apps).';
                ObsoleteTag = '18.0';
                action("Assisted Setup")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Assisted Setup';
                    Image = QuestionaireSetup;
                    RunObject = Page "Assisted Setup";
                    ToolTip = 'Set up core functionality such as sales tax, sending documents as email, and approval workflow by running through a few pages that guide you through the information.';
                    ObsoleteState = Pending;
                    ObsoleteReason = 'The new common entry points to all Settings is introduced in the app bar''s cogwheel menu (aligned with the Office apps).';
                    ObsoleteTag = '18.0';
                }
                action("Manual Setup")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Manual Setup';
                    RunObject = Page "Manual Setup";
                    ToolTip = 'Define your company policies for business departments and for general activities by filling setup windows manually.';
                    ObsoleteState = Pending;
                    ObsoleteReason = 'The new common entry points to all Settings is introduced in the app bar''s cogwheel menu (aligned with the Office apps).';
                    ObsoleteTag = '18.0';
                }
                action("Service Connections")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Service Connections';
                    Image = ServiceTasks;
                    RunObject = Page "Service Connections";
                    ToolTip = 'Enable and configure external services, such as exchange rate updates, Microsoft Social Engagement, and electronic bank integration.';
                    ObsoleteState = Pending;
                    ObsoleteReason = 'The new common entry points to all Settings is introduced in the app bar''s cogwheel menu (aligned with the Office apps).';
                    ObsoleteTag = '18.0';
                }
                action(Extensions)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Extensions';
                    Image = NonStockItemSetup;
                    RunObject = Page "Extension Management";
                    ToolTip = 'Install Extensions for greater functionality of the system.';
                    ObsoleteState = Pending;
                    ObsoleteReason = 'The new common entry points to all Settings is introduced in the app bar''s cogwheel menu (aligned with the Office apps).';
                    ObsoleteTag = '18.0';
                }
                action(Workflows)
                {
                    ApplicationArea = Suite;
                    Caption = 'Workflows';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page Workflows;
                    ToolTip = 'Set up or enable workflows that connect business-process tasks performed by different users. System tasks, such as automatic posting, can be included as steps in workflows, preceded or followed by user tasks. Requesting and granting approval to create new records are typical workflow steps.';
                    ObsoleteState = Pending;
                    ObsoleteReason = 'The new common entry points to all Settings is introduced in the app bar''s cogwheel menu (aligned with the Office apps).';
                    ObsoleteTag = '18.0';
                }
            }
#endif
        }
        area(creation)
        {


            action("Purchase Requisition")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Purchase Requisition';
                Image = Purchase;
                Promoted = false;

                RunObject = Page "Purchase Requisition Card";
                RunPageMode = Create;
                ToolTip = 'Create a new Purchae Requisition';
            }
            action("Stock Requisition")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Stock Requisition';
                Image = Purchase;
                Promoted = false;

                RunObject = Page "Stock Requisition Card";
                RunPageMode = Create;
                ToolTip = 'Create a new Stock Requsition';
            }
        }
        area(processing)
        {
            group(Reports)
            {
                Caption = 'Reports';

                action("Price &List")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Item Price &List';
                    Image = "Report";
                    RunObject = Report "Item Price List";
                    ToolTip = 'View a list of your items and their prices, for example, to send to customers. You can create the list for specific customers, campaigns, currencies, or other criteria.';
                }

                action("Inventory &Cost and Price List")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Inventory &Cost and Price List';
                    Image = "Report";
                    RunObject = Report "Inventory Cost and Price List";
                    ToolTip = 'View price information for your items or stockkeeping units, such as direct unit cost, last direct cost, unit price, profit percentage, and profit.';
                }
                action("Inventory List")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Inventory List';
                    Image = "Report";
                    RunObject = Report "Inventory - List";
                    ToolTip = 'Inventory List';
                }
                action("Physical Inventory List")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Physical Inventory List';
                    Image = "Report";
                    RunObject = Report "Phys. Inventory List";
                    ToolTip = 'Physical Inventory List';
                }
                action("Iventory Valuation")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Inventory Valuation';
                    Image = "Report";
                    RunObject = Report "Inventory Valuation";
                    ToolTip = 'Inventory Valuataion';
                }
                action("Inventory Availability")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Inventory Availability';
                    Image = "Report";
                    RunObject = Report "Inventory Availability";
                    ToolTip = 'Inventory Availability';
                }
                action("Inventory Order Details")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Inventory Order Details';
                    Image = "Report";
                    RunObject = Report "Inventory Order Details";
                    ToolTip = 'Inventory Order Details';
                }
                action("Inventory Valuation - Cost Spec")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Inventory Valuation Cost Spec';
                    Image = "Report";
                    RunObject = Report "Inventory Valuation";
                    ToolTip = '';
                }

                action("Item Registers - Value")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Item Registers';
                    Image = "Report";
                    RunObject = Report "Item Register - Value";
                    ToolTip = 'item register - Quantity';
                }

                action("Item Registers - Quantity")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Item Registers';
                    Image = "Report";
                    RunObject = Report "Item Register - Quantity";
                    ToolTip = 'Item Register - Quantity  ';
                }
                action("Inventory Movement")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Inventory Movement';
                    Image = "Report";
                    RunObject = Report "Inventory Movement";
                    ToolTip = 'Item Age Composition - Value';
                }
                action("Item Age Composition - Value")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Item Age Composition - Value';
                    Image = "Report";
                    RunObject = Report "Item Age Composition - Value";
                    ToolTip = 'Item Age Composition - Value';
                }

            }
            group(History)
            {
                Caption = 'History';
                action("Navi&gate")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Find entries...';
                    Image = Navigate;
                    RunObject = Page Navigate;
                    ShortCutKey = 'Shift+Ctrl+I';
                    ToolTip = 'Find entries and documents that exist for the document number and posting date on the selected document. (Formerly this action was named Navigate.)';
                }
            }
        }
    }
}

