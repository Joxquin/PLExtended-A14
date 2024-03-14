.class public final Lh2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lh2/e;->d:I

    iput-object p2, p0, Lh2/e;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lh2/e;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lh2/e;->e:Ljava/lang/Object;

    check-cast p0, Lh2/e;

    iget-object p0, p0, Lh2/e;->e:Ljava/lang/Object;

    check-cast p0, Lh2/h;

    invoke-virtual {p0, v1}, Lh2/h;->c(I)V

    return-void

    :goto_0
    iget-object v0, p0, Lh2/e;->e:Ljava/lang/Object;

    check-cast v0, Lh2/h;

    iget-object v0, v0, Lh2/h;->g:Lh2/a;

    invoke-virtual {v0}, Lh2/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh2/e;->e:Ljava/lang/Object;

    check-cast v0, Lh2/h;

    iget-object v0, v0, Lh2/h;->f:Lh2/m;

    invoke-virtual {v0}, Lh2/m;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lh2/e;->e:Ljava/lang/Object;

    check-cast v0, Lh2/h;

    iget-object v0, v0, Lh2/h;->a:Landroid/app/Activity;

    new-instance v2, Lh2/e;

    invoke-direct {v2, v1, p0}, Lh2/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
