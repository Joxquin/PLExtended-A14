.class public final Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
.super Lcom/google/protobuf/E;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->d()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final setAllAppsContainer$1(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->a(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    return-void
.end method

.method public final setQueryLength(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->b(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;I)V

    return-void
.end method

.method public final setWorkspace$2(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {p1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->c(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    return-void
.end method
