.class public final Landroidx/lifecycle/B;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Landroidx/lifecycle/t;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/lifecycle/t;

    invoke-interface {p0}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/s;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void

    :cond_0
    instance-of v0, p0, Landroidx/lifecycle/q;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/lifecycle/q;

    invoke-interface {p0}, Landroidx/lifecycle/q;->getLifecycle()Landroidx/lifecycle/m;

    move-result-object p0

    instance-of v0, p0, Landroidx/lifecycle/s;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/lifecycle/s;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_1
    return-void
.end method
