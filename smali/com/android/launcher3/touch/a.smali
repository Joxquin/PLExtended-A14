.class public final synthetic Lcom/android/launcher3/touch/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

.field public final synthetic f:Lcom/android/launcher3/LauncherState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;I)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/touch/a;->d:I

    iput-object p1, p0, Lcom/android/launcher3/touch/a;->e:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

    iput-object p2, p0, Lcom/android/launcher3/touch/a;->f:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/touch/a;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/touch/a;->e:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

    iget-object p0, p0, Lcom/android/launcher3/touch/a;->f:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->a(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/touch/a;->e:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

    iget-object p0, p0, Lcom/android/launcher3/touch/a;->f:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->b(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
