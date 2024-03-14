.class public final synthetic Lcom/android/launcher3/taskbar/V0;
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

    iput p1, p0, Lcom/android/launcher3/taskbar/V0;->d:I

    iput-object p2, p0, Lcom/android/launcher3/taskbar/V0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/taskbar/V0;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/V0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/MultiTranslateDelegate;

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/launcher3/util/MultiTranslateDelegate;->setTranslation(FFI)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/V0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/V0;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
