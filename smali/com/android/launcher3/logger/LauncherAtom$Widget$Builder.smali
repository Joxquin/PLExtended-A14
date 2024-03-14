.class public final Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
.super Lcom/google/protobuf/E;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->f()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final setComponentName$2(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->a(Lcom/android/launcher3/logger/LauncherAtom$Widget;Ljava/lang/String;)V

    return-void
.end method

.method public final setPackageName$2(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->b(Lcom/android/launcher3/logger/LauncherAtom$Widget;Ljava/lang/String;)V

    return-void
.end method

.method public final setSpanX(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->c(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    return-void
.end method

.method public final setSpanY(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->d(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    return-void
.end method

.method public final setWidgetFeatures(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->e(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    return-void
.end method
