.class public final synthetic LL1/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:LK1/a;

.field public final synthetic b:LJ1/n;


# direct methods
.method public synthetic constructor <init>(LK1/a;LJ1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/Q;->a:LK1/a;

    iput-object p2, p0, LL1/Q;->b:LJ1/n;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LL1/Q;->a:LK1/a;

    iget-object p0, p0, LL1/Q;->b:LJ1/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LK1/a;->b(LJ1/n;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
