.class public final Lcom/google/android/apps/nexuslauncher/allapps/q0;
.super Lcom/google/android/apps/nexuslauncher/allapps/g1;
.source "SourceFile"


# instance fields
.field public final synthetic j:Landroid/os/Bundle;

.field public final synthetic k:Ljava/util/List;

.field public final synthetic l:Lcom/google/android/apps/nexuslauncher/allapps/y0;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/CharSequence;ZZLandroid/os/Bundle;Ljava/util/List;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/q0;->l:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/q0;->j:Landroid/os/Bundle;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/q0;->k:Ljava/util/List;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/allapps/g1;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method


# virtual methods
.method public final getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/q0;->k:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->addAllItemAttributes(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public final getExtendedContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/q0;->l:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/q0;->j:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->i(Landroid/os/Bundle;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object p0

    return-object p0
.end method
