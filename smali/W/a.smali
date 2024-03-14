.class public abstract LW/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/lifecycle/q;)LW/e;
    .locals 2

    new-instance v0, LW/e;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/V;

    invoke-interface {v1}, Landroidx/lifecycle/V;->getViewModelStore()Landroidx/lifecycle/U;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LW/e;-><init>(Landroidx/lifecycle/q;Landroidx/lifecycle/U;)V

    return-object v0
.end method
