.class public final Lx1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# instance fields
.field public final a:Ld3/a;


# direct methods
.method public constructor <init>(LW2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/b;->a:Ld3/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lx1/b;->a:Ld3/a;

    invoke-interface {p0}, Ld3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, Lx1/a;

    invoke-direct {v0, p0}, Lx1/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
