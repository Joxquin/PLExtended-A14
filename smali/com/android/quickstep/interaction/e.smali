.class public final synthetic Lcom/android/quickstep/interaction/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/quickstep/interaction/AllSetActivity$1;

.field public final synthetic f:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AllSetActivity$1;Landroid/os/VibrationEffect;I)V
    .locals 0

    iput p3, p0, Lcom/android/quickstep/interaction/e;->d:I

    iput-object p1, p0, Lcom/android/quickstep/interaction/e;->e:Lcom/android/quickstep/interaction/AllSetActivity$1;

    iput-object p2, p0, Lcom/android/quickstep/interaction/e;->f:Landroid/os/VibrationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/interaction/e;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/e;->e:Lcom/android/quickstep/interaction/AllSetActivity$1;

    iget-object p0, p0, Lcom/android/quickstep/interaction/e;->f:Landroid/os/VibrationEffect;

    invoke-static {v0, p0}, Lcom/android/quickstep/interaction/AllSetActivity$1;->a(Lcom/android/quickstep/interaction/AllSetActivity$1;Landroid/os/VibrationEffect;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/e;->e:Lcom/android/quickstep/interaction/AllSetActivity$1;

    iget-object p0, p0, Lcom/android/quickstep/interaction/e;->f:Landroid/os/VibrationEffect;

    invoke-static {v0, p0}, Lcom/android/quickstep/interaction/AllSetActivity$1;->b(Lcom/android/quickstep/interaction/AllSetActivity$1;Landroid/os/VibrationEffect;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
