.class public final Lx3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/io/InputStream;)Lx3/d;
    .locals 2

    sget v0, Lx3/f;->a:I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lx3/d;

    new-instance v1, Lx3/p;

    invoke-direct {v1}, Lx3/p;-><init>()V

    invoke-direct {v0, p0, v1}, Lx3/d;-><init>(Ljava/io/InputStream;Lx3/p;)V

    return-object v0
.end method
