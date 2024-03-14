.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/V2;
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

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/V2;->d:I

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/V2;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/V2;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/V2;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    sget v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->f0:I

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->p()V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->updateState()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/V2;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    sget v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->f0:I

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/V2;->e:Ljava/lang/Object;

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->f0:I

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
