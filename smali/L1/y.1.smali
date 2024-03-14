.class public final synthetic LL1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/A;


# instance fields
.field public final synthetic a:LL1/B;


# direct methods
.method public synthetic constructor <init>(LL1/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/y;->a:LL1/B;

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 1

    iget-object p0, p0, LL1/y;->a:LL1/B;

    iget-object p0, p0, LL1/B;->h:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL1/A;

    invoke-interface {v0, p1, p2}, LL1/A;->a(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method
