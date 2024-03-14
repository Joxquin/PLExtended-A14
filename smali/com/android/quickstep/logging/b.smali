.class public final synthetic Lcom/android/quickstep/logging/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/util/NavigationMode;

    invoke-static {p1}, Lcom/android/quickstep/logging/SettingsChangeLogger;->a(Lcom/android/launcher3/util/NavigationMode;)Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    move-result-object p0

    return-object p0
.end method
