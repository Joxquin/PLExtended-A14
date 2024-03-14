.class public final LX1/q;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LX1/t;


# direct methods
.method public synthetic constructor <init>(LX1/t;IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;I)V
    .locals 6

    iput p7, p0, LX1/q;->d:I

    iput-object p1, p0, LX1/q;->e:LX1/t;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, LX1/q;->d:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, LX1/q;->e:LX1/t;

    iget-object p1, p1, LX1/t;->a:LV1/i;

    invoke-interface {p1}, LV1/i;->a()V

    iget-object p0, p0, LX1/q;->e:LX1/t;

    iget-object p0, p0, LX1/t;->b:LX1/u;

    iget-object p0, p0, LX1/u;->o:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p0}, Lcom/android/launcher3/popup/SystemShortcut;->dismissTaskMenuView(Landroid/content/Context;)V

    return-void

    :goto_0
    iget-object p1, p0, LX1/q;->e:LX1/t;

    iget-object p1, p1, LX1/t;->a:LV1/i;

    invoke-interface {p1}, Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;->onScreenshot()V

    iget-object p0, p0, LX1/q;->e:LX1/t;

    iget-object p0, p0, LX1/t;->b:LX1/u;

    iget-object p0, p0, LX1/u;->o:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p0}, Lcom/android/launcher3/popup/SystemShortcut;->dismissTaskMenuView(Landroid/content/Context;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
