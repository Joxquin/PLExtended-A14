.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/M1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

.field public final synthetic b:Lcom/android/launcher3/icons/BitmapInfo;

.field public final synthetic c:Lcom/android/launcher3/LauncherAppState;

.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/g1;

.field public final synthetic e:Z

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Lcom/android/launcher3/icons/BitmapInfo;Lcom/android/launcher3/LauncherAppState;Lcom/google/android/apps/nexuslauncher/allapps/g1;ZLandroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->b:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->c:Lcom/android/launcher3/LauncherAppState;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->d:Lcom/google/android/apps/nexuslauncher/allapps/g1;

    iput-boolean p5, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->e:Z

    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->f:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->g:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->b:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->c:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->d:Lcom/google/android/apps/nexuslauncher/allapps/g1;

    iget-boolean v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->e:Z

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->f:Landroid/os/Bundle;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/M1;->g:Z

    sget-object v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->D:Lcom/google/android/apps/nexuslauncher/allapps/E1;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    move-object v3, v7

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-static {v2, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->t(Lcom/android/launcher3/LauncherAppState;Landroid/app/search/SearchTarget;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    const/16 v9, 0x10

    invoke-virtual {v3, v9}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->u(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget v9, v1, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-virtual {v6, v9, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(ILjava/lang/String;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eqz v4, :cond_2

    new-instance p0, Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "class"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/icons/IconProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v6, p0, v7}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/icons/BitmapInfo;->withBadgeInfo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "SearchResultIcon"

    const-string v0, "Unable to find resource from PackageManager"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_4

    if-eq v1, v3, :cond_4

    if-nez v3, :cond_3

    iget-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-static {v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->t(Lcom/android/launcher3/LauncherAppState;Landroid/app/search/SearchTarget;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    :cond_3
    invoke-virtual {v1, v3}, Lcom/android/launcher3/icons/BitmapInfo;->withBadgeInfo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    invoke-virtual {v6}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v6}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method
