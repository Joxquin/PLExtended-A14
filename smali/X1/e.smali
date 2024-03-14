.class public final synthetic LX1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LX1/f;

.field public final synthetic f:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(LX1/f;Landroid/net/Uri;I)V
    .locals 0

    iput p3, p0, LX1/e;->d:I

    iput-object p1, p0, LX1/e;->e:LX1/f;

    iput-object p2, p0, LX1/e;->f:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LX1/e;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LX1/e;->e:LX1/f;

    iget-object p0, p0, LX1/e;->f:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LX1/e;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, LX1/e;-><init>(LX1/f;Landroid/net/Uri;I)V

    iget-object p0, v0, LX1/f;->a:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Landroid/content/Context;

    const/4 v0, 0x0

    const v2, 0x7f1301b2

    const v3, 0x7f1301b1

    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    :goto_0
    iget-object v0, p0, LX1/e;->e:LX1/f;

    iget-object p0, p0, LX1/e;->f:Landroid/net/Uri;

    invoke-static {v0, p0}, LX1/f;->f(LX1/f;Landroid/net/Uri;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
