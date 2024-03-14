.class public final synthetic Lcom/android/launcher3/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/os/Binder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Binder;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/Z;->d:I

    iput-object p1, p0, Lcom/android/launcher3/Z;->e:Landroid/os/Binder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/Z;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/Z;->e:Landroid/os/Binder;

    check-cast p0, Lcom/android/launcher3/LauncherAnimationRunner;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->c(Lcom/android/launcher3/LauncherAnimationRunner;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/Z;->e:Landroid/os/Binder;

    check-cast p0, Lcom/android/launcher3/LauncherAnimationRunner;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->d(Lcom/android/launcher3/LauncherAnimationRunner;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/Z;->e:Landroid/os/Binder;

    check-cast p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->a(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
