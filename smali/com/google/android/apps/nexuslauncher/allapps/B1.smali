.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/B1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;

.field public final synthetic b:Lcom/android/launcher3/model/data/PackageItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;Lcom/android/launcher3/model/data/PackageItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/B1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/B1;->b:Lcom/android/launcher3/model/data/PackageItemInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/B1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/B1;->b:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->g:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    return-object p0
.end method
