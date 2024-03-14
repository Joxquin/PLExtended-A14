.class public final Lb3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/Z;


# instance fields
.field public final synthetic a:LX2/Y;

.field public final synthetic b:Lb3/f;


# direct methods
.method public constructor <init>(Lb3/f;LX2/Y;)V
    .locals 0

    iput-object p1, p0, Lb3/a;->b:Lb3/f;

    iput-object p2, p0, Lb3/a;->a:LX2/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LX2/z;)V
    .locals 6

    iget-object v0, p0, Lb3/a;->b:Lb3/f;

    iget-object v1, v0, Lb3/f;->c:Ljava/util/Map;

    iget-object p0, p0, Lb3/a;->a:LX2/Y;

    invoke-virtual {p0}, LX2/Y;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const-string v3, "%s does not have exactly one group"

    invoke-static {v3, v2, v5}, LO2/m;->l(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX2/I;

    new-instance v3, LX2/I;

    iget-object v2, v2, LX2/I;->a:Ljava/util/List;

    sget-object v4, LX2/c;->b:LX2/c;

    invoke-direct {v3, v2, v4}, LX2/I;-><init>(Ljava/util/List;LX2/c;)V

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lio/grpc/ConnectivityState;->f:Lio/grpc/ConnectivityState;

    sget-object v2, Lio/grpc/ConnectivityState;->g:Lio/grpc/ConnectivityState;

    iget-object v3, p1, LX2/z;->a:Lio/grpc/ConnectivityState;

    if-eq v3, v1, :cond_2

    if-ne v3, v2, :cond_3

    :cond_2
    iget-object v4, v0, Lb3/f;->b:LX2/V;

    invoke-virtual {v4}, LX2/V;->f()V

    :cond_3
    if-ne v3, v2, :cond_4

    invoke-virtual {p0}, LX2/Y;->d()V

    :cond_4
    invoke-static {p0}, Lb3/f;->d(LX2/Y;)Lb3/d;

    move-result-object p0

    iget-object v4, p0, Lb3/d;->a:Ljava/lang/Object;

    check-cast v4, LX2/z;

    iget-object v4, v4, LX2/z;->a:Lio/grpc/ConnectivityState;

    invoke-virtual {v4, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lio/grpc/ConnectivityState;->d:Lio/grpc/ConnectivityState;

    invoke-virtual {v3, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    iput-object p1, p0, Lb3/d;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lb3/f;->e()V

    :cond_6
    :goto_1
    return-void
.end method
