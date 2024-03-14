.class public final Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;
.super Lcom/google/protobuf/E;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->a()Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->a()Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;->a()Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void
.end method
