.class public final synthetic Lcom/android/launcher3/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/h0;->d:I

    iput-object p2, p0, Lcom/android/launcher3/h0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/h0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/h0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/IconCache;->close()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/h0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/pm/InstallSessionTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/pm/InstallSessionTracker;->unregister()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/launcher3/h0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->setWidgetRefreshCallback(Lcom/android/launcher3/d0;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/launcher3/h0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherAppState;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->b(Lcom/android/launcher3/LauncherAppState;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/launcher3/h0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherAppState$IconObserver;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState$IconObserver;->verifyIconChanged()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/h0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->destroy()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
