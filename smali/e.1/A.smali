.class public abstract Le/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/z;

.field public final synthetic b:Le/D;


# direct methods
.method public constructor <init>(Le/D;)V
    .locals 0

    iput-object p1, p0, Le/A;->b:Le/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Le/A;->a:Le/z;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Le/A;->b:Le/D;

    iget-object v1, v1, Le/D;->l:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Le/A;->a:Le/z;

    :cond_0
    return-void
.end method

.method public abstract b()I
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Le/A;->a()V

    move-object v0, p0

    check-cast v0, Le/y;

    iget v0, v0, Le/y;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Le/A;->a:Le/z;

    if-nez v1, :cond_1

    new-instance v1, Le/z;

    invoke-direct {v1, p0}, Le/z;-><init>(Le/A;)V

    iput-object v1, p0, Le/A;->a:Le/z;

    :cond_1
    iget-object v1, p0, Le/A;->b:Le/D;

    iget-object v1, v1, Le/D;->l:Landroid/content/Context;

    iget-object p0, p0, Le/A;->a:Le/z;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
