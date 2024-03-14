.class public final synthetic Lcom/android/quickstep/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/quickstep/LauncherBackAnimationController$1;

.field public final synthetic f:Landroid/window/BackMotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController$1;Landroid/window/BackMotionEvent;I)V
    .locals 0

    iput p3, p0, Lcom/android/quickstep/P;->d:I

    iput-object p1, p0, Lcom/android/quickstep/P;->e:Lcom/android/quickstep/LauncherBackAnimationController$1;

    iput-object p2, p0, Lcom/android/quickstep/P;->f:Landroid/window/BackMotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/P;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/P;->e:Lcom/android/quickstep/LauncherBackAnimationController$1;

    iget-object p0, p0, Lcom/android/quickstep/P;->f:Landroid/window/BackMotionEvent;

    invoke-static {v0, p0}, Lcom/android/quickstep/LauncherBackAnimationController$1;->d(Lcom/android/quickstep/LauncherBackAnimationController$1;Landroid/window/BackMotionEvent;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/P;->e:Lcom/android/quickstep/LauncherBackAnimationController$1;

    iget-object p0, p0, Lcom/android/quickstep/P;->f:Landroid/window/BackMotionEvent;

    invoke-static {v0, p0}, Lcom/android/quickstep/LauncherBackAnimationController$1;->a(Lcom/android/quickstep/LauncherBackAnimationController$1;Landroid/window/BackMotionEvent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
