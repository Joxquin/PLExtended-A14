.class final Lcom/android/launcher3/dragndrop/PinItemDragListener$1;
.super Lcom/android/launcher3/widget/PendingAddWidgetInfo;
.source "SourceFile"


# instance fields
.field final synthetic val$flowHandler:Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener$1;->val$flowHandler:Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;

    const/16 p2, -0x71

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    return-void
.end method


# virtual methods
.method public final getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener$1;->val$flowHandler:Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;

    return-object p0
.end method
