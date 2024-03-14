.class public final LJ/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:LJ/f;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;LJ/f;II)V
    .locals 0

    iput p5, p0, LJ/g;->d:I

    iput-object p1, p0, LJ/g;->e:Ljava/lang/String;

    iput-object p2, p0, LJ/g;->f:Landroid/content/Context;

    iput-object p3, p0, LJ/g;->g:LJ/f;

    iput p4, p0, LJ/g;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()LJ/i;
    .locals 4

    iget v0, p0, LJ/g;->d:I

    iget-object v1, p0, LJ/g;->f:Landroid/content/Context;

    iget-object v2, p0, LJ/g;->e:Ljava/lang/String;

    iget v3, p0, LJ/g;->h:I

    iget-object p0, p0, LJ/g;->g:LJ/f;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v1, p0, v3}, LJ/j;->a(Ljava/lang/String;Landroid/content/Context;LJ/f;I)LJ/i;

    move-result-object p0

    return-object p0

    :goto_0
    :try_start_0
    invoke-static {v2, v1, p0, v3}, LJ/j;->a(Ljava/lang/String;Landroid/content/Context;LJ/f;I)LJ/i;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    new-instance p0, LJ/i;

    const/4 v0, -0x3

    invoke-direct {p0, v0}, LJ/i;-><init>(I)V

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LJ/g;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, LJ/g;->a()LJ/i;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0}, LJ/g;->a()LJ/i;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
