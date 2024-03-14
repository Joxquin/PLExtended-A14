.class public final synthetic LT1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LT1/g;


# direct methods
.method public synthetic constructor <init>(LT1/g;I)V
    .locals 0

    iput p2, p0, LT1/c;->a:I

    iput-object p1, p0, LT1/c;->b:LT1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LT1/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LT1/c;->b:LT1/g;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0}, LT1/g;->f()V

    return-void

    :goto_0
    iget-object p0, p0, LT1/c;->b:LT1/g;

    check-cast p1, Ljava/lang/String;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LT1/g;->d:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object p0, p0, LT1/g;->c:Landroid/content/Context;

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->registerPkgActions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
