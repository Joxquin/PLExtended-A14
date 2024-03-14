.class public final synthetic Lb1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    iput p2, p0, Lb1/e;->d:I

    iput-object p1, p0, Lb1/e;->e:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lb1/e;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lb1/e;->e:Landroid/view/KeyEvent$Callback;

    check-cast p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->p(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lb1/e;->e:Landroid/view/KeyEvent$Callback;

    check-cast p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->invalidateHomeTaskSnapshot(Landroid/app/Activity;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lb1/e;->e:Landroid/view/KeyEvent$Callback;

    check-cast p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->s(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-void

    :goto_0
    iget-object p0, p0, Lb1/e;->e:Landroid/view/KeyEvent$Callback;

    check-cast p0, Lcom/android/launcher3/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->moveToDefaultScreen()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
