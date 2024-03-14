.class public final synthetic LI0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/config/FeatureFlags$IntFlag;

    invoke-static {p1}, Lcom/android/launcher3/config/FeatureFlags$IntFlag;->a(Lcom/android/launcher3/config/FeatureFlags$IntFlag;)I

    move-result p0

    return p0
.end method
