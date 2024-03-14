.class public final Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
.super Lcom/google/protobuf/E;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->n()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAllItemAttributes(Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->a(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final addItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$Attribute;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->b(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    return-void
.end method

.method public final getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object p0

    return-object p0
.end method

.method public final hasContainerInfo()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasContainerInfo()Z

    move-result p0

    return p0
.end method

.method public final setApplication(Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->c(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Application;)V

    return-void
.end method

.method public final setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    .line 4
    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->d(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    return-void
.end method

.method public final setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    .line 2
    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->d(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    return-void
.end method

.method public final setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->e(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V

    return-void
.end method

.method public final setIsKidsMode(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->f(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)V

    return-void
.end method

.method public final setIsWork(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->g(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)V

    return-void
.end method

.method public final setRank(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->h(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;I)V

    return-void
.end method

.method public final setSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->i(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V

    return-void
.end method

.method public final setShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->j(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V

    return-void
.end method

.method public final setSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->k(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Slice;)V

    return-void
.end method

.method public final setTask(Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->l(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Task;)V

    return-void
.end method

.method public final setWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->m(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    return-void
.end method
