.class public final Lcom/google/android/apps/nexuslauncher/allapps/O1;
.super Lcom/android/launcher3/model/data/WorkspaceItemInfo;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Landroid/content/pm/ShortcutInfo;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O1;->e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/O1;->d:Ljava/util/List;

    invoke-direct {p0, p3, p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method


# virtual methods
.method public final getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O1;->d:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->addAllItemAttributes(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public final getExtendedContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O1;->e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->u()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->i(Landroid/os/Bundle;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object p0

    return-object p0
.end method
