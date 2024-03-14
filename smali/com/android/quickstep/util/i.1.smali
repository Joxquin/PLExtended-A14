.class public final synthetic Lcom/android/quickstep/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/quickstep/util/AsyncClockEventDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/AsyncClockEventDelegate;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/util/i;->d:I

    iput-object p1, p0, Lcom/android/quickstep/util/i;->e:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/util/i;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/util/i;->e:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    invoke-static {p0}, Lcom/android/quickstep/util/AsyncClockEventDelegate;->f(Lcom/android/quickstep/util/AsyncClockEventDelegate;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/util/i;->e:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    invoke-static {p0}, Lcom/android/quickstep/util/AsyncClockEventDelegate;->a(Lcom/android/quickstep/util/AsyncClockEventDelegate;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
