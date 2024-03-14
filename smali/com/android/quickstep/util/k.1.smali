.class public final synthetic Lcom/android/quickstep/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/util/AsyncClockEventDelegate;

.field public final synthetic e:Landroid/content/BroadcastReceiver;

.field public final synthetic f:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/AsyncClockEventDelegate;Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/k;->d:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    iput-object p2, p0, Lcom/android/quickstep/util/k;->e:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/android/quickstep/util/k;->f:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/k;->d:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    iget-object v1, p0, Lcom/android/quickstep/util/k;->e:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/quickstep/util/k;->f:Landroid/content/Intent;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/util/AsyncClockEventDelegate;->b(Lcom/android/quickstep/util/AsyncClockEventDelegate;Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V

    return-void
.end method
