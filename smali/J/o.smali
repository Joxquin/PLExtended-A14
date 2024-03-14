.class public final LJ/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final e:LL/a;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LJ/o;LL/a;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LJ/o;->d:I

    .line 5
    iput-object p1, p0, LJ/o;->g:Ljava/lang/Object;

    iput-object p2, p0, LJ/o;->e:LL/a;

    iput-object p3, p0, LJ/o;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;LJ/g;LJ/h;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LJ/o;->d:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LJ/o;->f:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, LJ/o;->e:LL/a;

    .line 4
    iput-object p1, p0, LJ/o;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LJ/o;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LJ/o;->e:LL/a;

    iget-object p0, p0, LJ/o;->f:Ljava/lang/Object;

    invoke-interface {v0, p0}, LL/a;->accept(Ljava/lang/Object;)V

    return-void

    :goto_0
    :try_start_0
    iget-object v0, p0, LJ/o;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, LJ/o;->e:LL/a;

    iget-object v2, p0, LJ/o;->g:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, LJ/o;

    invoke-direct {v3, p0, v1, v0}, LJ/o;-><init>(LJ/o;LL/a;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
