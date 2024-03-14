.class public final synthetic LK2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:LK2/s;


# direct methods
.method public synthetic constructor <init>(LK2/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/r;->a:LK2/s;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LK2/r;->a:LK2/s;

    check-cast p1, Ln1/e;

    iget-object p0, p0, LK2/s;->e:Ljava/util/List;

    invoke-interface {p1, p0}, Ln1/e;->a(Ljava/util/List;)V

    return-void
.end method
