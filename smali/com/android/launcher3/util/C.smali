.class public final synthetic Lcom/android/launcher3/util/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-interface {p1}, Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;->onUserPresent()V

    return-void
.end method
