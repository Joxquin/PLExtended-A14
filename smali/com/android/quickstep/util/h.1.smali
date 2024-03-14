.class public final synthetic Lcom/android/quickstep/util/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/util/AsyncClockEventDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/AsyncClockEventDelegate;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/util/h;->a:I

    iput-object p1, p0, Lcom/android/quickstep/util/h;->b:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/util/h;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/util/h;->b:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    check-cast p1, Landroid/database/ContentObserver;

    invoke-static {p0, p1}, Lcom/android/quickstep/util/AsyncClockEventDelegate;->d(Lcom/android/quickstep/util/AsyncClockEventDelegate;Landroid/database/ContentObserver;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/util/h;->b:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/quickstep/util/AsyncClockEventDelegate;->c(Lcom/android/quickstep/util/AsyncClockEventDelegate;Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
