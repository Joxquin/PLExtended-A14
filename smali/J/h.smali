.class public final LJ/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LJ/h;->a:I

    iput-object p2, p0, LJ/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LJ/i;)V
    .locals 3

    iget v0, p0, LJ/h;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez p1, :cond_0

    new-instance p1, LJ/i;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, LJ/i;-><init>(I)V

    :cond_0
    iget-object p0, p0, LJ/h;->b:Ljava/lang/Object;

    check-cast p0, LJ/c;

    invoke-virtual {p0, p1}, LJ/c;->a(LJ/i;)V

    return-void

    :goto_0
    sget-object v0, LJ/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LJ/j;->d:Lq/m;

    iget-object v2, p0, LJ/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    monitor-exit v0

    goto :goto_2

    :cond_1
    iget-object p0, p0, LJ/h;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Lq/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL/a;

    invoke-interface {v0, p1}, LL/a;->accept(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LJ/h;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, LJ/i;

    invoke-virtual {p0, p1}, LJ/h;->a(LJ/i;)V

    return-void

    :goto_0
    check-cast p1, LJ/i;

    invoke-virtual {p0, p1}, LJ/h;->a(LJ/i;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
