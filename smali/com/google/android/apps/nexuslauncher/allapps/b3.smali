.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

.field public final synthetic e:Landroid/widget/RelativeLayout$LayoutParams;

.field public final synthetic f:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;Landroid/widget/RelativeLayout$LayoutParams;Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/b3;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/b3;->e:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/b3;->f:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/b3;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/b3;->e:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/b3;->f:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    iget-boolean v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    const/16 v3, 0x14

    const/16 v4, 0x11

    if-eqz v2, :cond_0

    const v2, 0x7f0a0185

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    iget-boolean v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    const/16 v3, 0x15

    const/16 v4, 0x10

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->f:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    if-eq p0, v2, :cond_2

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    if-ne p0, v2, :cond_1

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->J:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-ne p0, v2, :cond_3

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_2
    :goto_1
    const p0, 0x7f0a0041

    invoke-virtual {v1, v4, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :cond_3
    :goto_2
    return-void
.end method
