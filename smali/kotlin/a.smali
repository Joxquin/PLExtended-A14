.class public Lkotlin/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lm3/a;)Le3/c;
    .locals 1

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v0, p0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lm3/a;)V

    return-object v0
.end method
