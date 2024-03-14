.class public final LY1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final d:Lcom/android/launcher3/util/ComponentKey;

.field public final e:Landroid/net/Uri;

.field public final synthetic f:Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, LY1/b;->f:Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lc2/a;->a(Landroid/net/Uri;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p1

    iput-object p1, p0, LY1/b;->d:Lcom/android/launcher3/util/ComponentKey;

    iput-object p2, p0, LY1/b;->e:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, LY1/b;->d:Lcom/android/launcher3/util/ComponentKey;

    sget v1, LY1/A;->e:I

    new-instance v1, LY1/z;

    const-string v2, "isDisabled"

    iget-object v3, p0, LY1/b;->e:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v1, v0, v2, v3}, LY1/z;-><init>(Lcom/android/launcher3/util/ComponentKey;ZLandroid/net/Uri;)V

    iget-object p0, p0, LY1/b;->f:Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->b(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
