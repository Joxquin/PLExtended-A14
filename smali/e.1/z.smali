.class public final Le/z;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/A;


# direct methods
.method public constructor <init>(Le/A;)V
    .locals 0

    iput-object p1, p0, Le/z;->a:Le/A;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Le/z;->a:Le/A;

    check-cast p0, Le/y;

    iget p1, p0, Le/y;->c:I

    const/4 p2, 0x1

    iget-object p0, p0, Le/y;->d:Le/D;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p2, p2}, Le/D;->y(ZZ)Z

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p2}, Le/D;->y(ZZ)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
