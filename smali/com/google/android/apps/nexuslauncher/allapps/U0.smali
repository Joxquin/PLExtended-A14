.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/U0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/U0;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/U0;->e:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/U0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/U0;->e:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;

    sget v0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->j:I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/U0;->e:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;

    sget v0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->j:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->d:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/U0;->e:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;

    sget v0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->j:I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
