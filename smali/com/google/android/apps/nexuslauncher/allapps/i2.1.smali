.class public Lcom/google/android/apps/nexuslauncher/allapps/i2;
.super Lcom/google/android/apps/nexuslauncher/allapps/g1;
.source "SourceFile"


# instance fields
.field public final j:Landroid/app/blob/BlobHandle;

.field public final k:Ljava/util/List;

.field public final synthetic l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/CharSequence;Landroid/app/blob/BlobHandle;Ljava/util/List;)V
    .locals 7

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/i2;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/allapps/g1;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/CharSequence;ZZ)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/i2;->k:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/allapps/i2;->j:Landroid/app/blob/BlobHandle;

    invoke-virtual {p1, p7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/i2;->k:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->addAllItemAttributes(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public final x()Landroid/graphics/Bitmap;
    .locals 9

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/i2;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/i2;->j:Landroid/app/blob/BlobHandle;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->k:Lcom/google/android/apps/nexuslauncher/allapps/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :try_start_0
    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v7, v3, Lcom/google/android/apps/nexuslauncher/allapps/g;->a:Landroid/app/blob/BlobStoreManager;

    invoke-virtual {v7, v2}, Landroid/app/blob/BlobStoreManager;->openBlob(Landroid/app/blob/BlobHandle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    const/4 v2, 0x1

    invoke-virtual {v3, v7, v8, v2}, Lcom/google/android/apps/nexuslauncher/allapps/g;->a(JZ)V

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v7, v4}, Lcom/google/android/apps/nexuslauncher/allapps/g;->a(JZ)V

    const-string v3, "BlobstoreAssetProvider"

    const-string v4, "Error getting asset from Blobstore"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v2, v1

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->f:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->t:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    const/high16 v5, 0x40000000    # 2.0f

    if-lez v3, :cond_2

    iget v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->v:I

    iget v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->w:I

    sub-int/2addr v3, v6

    div-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->v:I

    int-to-float v4, v4

    iget v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->w:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    sub-float/2addr v4, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->w:I

    add-int v6, v3, v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v1, v7

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_2
    iget v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->v:I

    int-to-float v3, v3

    iget v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->w:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    sub-float/2addr v3, v6

    div-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v3, v5

    iget v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->v:I

    iget v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->w:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v4

    int-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->w:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v1, v5

    add-int/2addr v1, v3

    iget v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->w:I

    add-int/2addr v5, v4

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2
    iget v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->v:I

    invoke-static {}, Lcom/android/launcher3/icons/GraphicsUtils;->noteNewBitmapCreated()V

    new-instance v3, Landroid/graphics/Picture;

    invoke-direct {v3}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->u:I

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {v3}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    :goto_3
    move-object v2, v1

    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_5
    return-object v2
.end method
