.class public interface abstract Ln1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public l(Ln1/j;Landroid/content/Context;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Ln1/k;->onPluginConnected(Ln1/j;Landroid/content/Context;)V

    return-void
.end method

.method public o(Ln1/j;)V
    .locals 0

    invoke-interface {p0, p1}, Ln1/k;->onPluginDisconnected(Ln1/j;)V

    return-void
.end method

.method public onPluginConnected(Ln1/j;Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPluginDisconnected(Ln1/j;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
