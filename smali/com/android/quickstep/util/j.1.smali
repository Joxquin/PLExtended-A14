.class public final synthetic Lcom/android/quickstep/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/AsyncClockEventDelegate;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/AsyncClockEventDelegate;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/j;->a:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    iput-object p2, p0, Lcom/android/quickstep/util/j;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/j;->a:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    iget-object p0, p0, Lcom/android/quickstep/util/j;->b:Landroid/content/Intent;

    check-cast p1, Landroid/content/BroadcastReceiver;

    check-cast p2, Landroid/os/Handler;

    invoke-static {v0, p0, p1, p2}, Lcom/android/quickstep/util/AsyncClockEventDelegate;->e(Lcom/android/quickstep/util/AsyncClockEventDelegate;Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    return-void
.end method
