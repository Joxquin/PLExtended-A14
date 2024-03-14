.class public final synthetic LI0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-static {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->a(Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;)Z

    move-result p0

    return p0
.end method
