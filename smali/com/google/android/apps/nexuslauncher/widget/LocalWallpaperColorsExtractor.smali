.class public Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;
.super Lcom/android/launcher3/widget/LocalColorExtractor;
.source "SourceFile"

# interfaces
.implements Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;


# instance fields
.field public final d:Landroid/app/WallpaperManager;

.field public final e:Ld2/a;

.field public f:Lcom/android/launcher3/widget/LocalColorExtractor$Listener;

.field public final g:Landroid/graphics/RectF;

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "android.theme.customization.color_source"

    invoke-direct {p0}, Lcom/android/launcher3/widget/LocalColorExtractor;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->f:Lcom/android/launcher3/widget/LocalColorExtractor$Listener;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->g:Landroid/graphics/RectF;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->h:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "theme_customization_overlay_packages"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "preset"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LocalWallpaperColorsExt"

    const-string v3, "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d:Landroid/app/WallpaperManager;

    new-instance v0, Ld2/a;

    invoke-direct {v0, p1}, Ld2/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->e:Ld2/a;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d:Landroid/app/WallpaperManager;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->e:Ld2/a;

    :goto_1
    return-void
.end method


# virtual methods
.method public final applyColorsOverride(Landroid/content/Context;Landroid/app/WallpaperColors;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Landroid/widget/RemoteViews$ColorResources;->create(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$ColorResources;->apply(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->e:Ld2/a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ld2/a;->b(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final onColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d:Landroid/app/WallpaperManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->f:Lcom/android/launcher3/widget/LocalColorExtractor$Listener;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;

    move-result-object p0

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onColorsChanged(Landroid/util/SparseIntArray;)V

    :cond_2
    return-void
.end method
