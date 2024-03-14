.class public interface abstract Landroidx/lifecycle/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/N;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/Class;LV/d;)Landroidx/lifecycle/N;
    .locals 0

    invoke-interface {p0, p1}, Landroidx/lifecycle/Q;->a(Ljava/lang/Class;)Landroidx/lifecycle/N;

    move-result-object p0

    return-object p0
.end method
