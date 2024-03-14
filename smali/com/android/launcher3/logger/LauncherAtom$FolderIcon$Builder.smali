.class public final Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
.super Lcom/google/protobuf/E;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->e()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final setCardinality(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->a(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;I)V

    return-void
.end method

.method public final setFromLabelState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->b(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Lcom/android/launcher3/logger/LauncherAtom$FromState;)V

    return-void
.end method

.method public final setLabelInfo(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->c(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Ljava/lang/String;)V

    return-void
.end method

.method public final setToLabelState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->d(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Lcom/android/launcher3/logger/LauncherAtom$ToState;)V

    return-void
.end method
