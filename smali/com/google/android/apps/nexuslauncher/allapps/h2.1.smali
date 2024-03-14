.class public final Lcom/google/android/apps/nexuslauncher/allapps/h2;
.super Lcom/google/android/apps/nexuslauncher/allapps/i2;
.source "SourceFile"


# instance fields
.field public final synthetic m:Landroid/os/Bundle;

.field public final synthetic n:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/CharSequence;Landroid/app/blob/BlobHandle;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/h2;->n:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    iput-object p8, p0, Lcom/google/android/apps/nexuslauncher/allapps/h2;->m:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p7}, Lcom/google/android/apps/nexuslauncher/allapps/i2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/CharSequence;Landroid/app/blob/BlobHandle;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 2

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/h2;->n:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/h2;->m:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->i(Landroid/os/Bundle;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V

    invoke-virtual {v0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object p0
.end method
