.class public final LW1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/b;


# virtual methods
.method public final a()Z
    .locals 0

    sget-object p0, Lcom/google/android/apps/nexuslauncher/c;->g:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    return p0
.end method
