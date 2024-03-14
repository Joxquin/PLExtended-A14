.class public final synthetic LA0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LA0/s;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(LA0/s;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, LA0/p;->a:I

    iput-object p1, p0, LA0/p;->b:LA0/s;

    iput-object p2, p0, LA0/p;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, LA0/p;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LA0/p;->b:LA0/s;

    iget-object p0, p0, LA0/p;->c:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, LA0/p;

    invoke-direct {v2, v0, p0, v1}, LA0/p;-><init>(LA0/s;Ljava/util/ArrayList;I)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object v0, p0, LA0/p;->b:LA0/s;

    iget-object p0, p0, LA0/p;->c:Ljava/util/ArrayList;

    check-cast p1, LA0/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LB0/h;->d()LB0/g;

    move-result-object v2

    iget-object v3, p1, LA0/w;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, LB0/g;->b(Ljava/lang/String;)V

    iget-object v3, p1, LA0/w;->j:[LA0/t;

    iget-object v4, p1, LA0/w;->m:LA0/x;

    iget v4, v4, LA0/x;->a:I

    add-int/lit8 v5, v4, -0x1

    aget-object v3, v3, v5

    if-nez v3, :cond_0

    iget v3, p1, LA0/w;->g:I

    add-int/lit8 v4, v3, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_1

    iget-object v1, p1, LA0/w;->m:LA0/x;

    iget v1, v1, LA0/x;->a:I

    iget v3, p1, LA0/w;->g:I

    add-int/2addr v3, v1

    sub-int/2addr v3, v4

    rem-int/2addr v3, v1

    invoke-static {}, LB0/f;->u()LB0/e;

    move-result-object v1

    iget-object v5, p1, LA0/w;->j:[LA0/t;

    aget-object v5, v5, v3

    invoke-virtual {v5, v0, p0, v1}, LA0/t;->a(LA0/s;Ljava/util/ArrayList;LB0/e;)LA0/t;

    invoke-static {}, LB0/d;->d()LB0/c;

    move-result-object v5

    invoke-virtual {v5, v1}, LB0/c;->a(LB0/e;)V

    iget-object v1, p1, LA0/w;->i:[J

    aget-wide v6, v1, v3

    invoke-virtual {v5, v6, v7}, LB0/c;->b(J)V

    invoke-virtual {v2, v5}, LB0/g;->a(LB0/c;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, LB0/h;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
