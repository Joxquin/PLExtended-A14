.class public final synthetic LL1/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:LL1/O;

.field public final synthetic b:LJ1/n;


# direct methods
.method public synthetic constructor <init>(LL1/O;LJ1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/L;->a:LL1/O;

    iput-object p2, p0, LL1/L;->b:LJ1/n;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LL1/L;->a:LL1/O;

    iget-object p0, p0, LL1/L;->b:LJ1/n;

    iget-object v0, v0, LL1/O;->d:LK1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LK1/a;->b(LJ1/n;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
