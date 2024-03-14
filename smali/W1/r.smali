.class public final synthetic LW1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;I)V
    .locals 0

    iput p2, p0, LW1/r;->d:I

    iput-object p1, p0, LW1/r;->e:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LW1/r;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, LW1/r;->e:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    if-nez v0, :cond_0

    iget-object p0, p0, LW1/p;->f:Landroid/widget/ImageView;

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->m:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v1, p0, LW1/p;->f:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :goto_1
    iget-object p0, p0, LW1/r;->e:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    sget v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->q:I

    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->i(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
