.class public final Ls0/d;
.super Ls0/b;
.source "SourceFile"


# instance fields
.field public final D:Ll0/a;

.field public final E:Landroid/graphics/Rect;

.field public final F:Landroid/graphics/Rect;

.field public final G:Lk0/D;

.field public H:Ln0/x;

.field public I:Ln0/x;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;Ls0/e;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ls0/b;-><init>(Lcom/airbnb/lottie/a;Ls0/e;)V

    new-instance v0, Ll0/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ll0/a;-><init>(I)V

    iput-object v0, p0, Ls0/d;->D:Ll0/a;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ls0/d;->E:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ls0/d;->F:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lk0/m;->d:Ljava/util/Map;

    iget-object p2, p2, Ls0/e;->g:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk0/D;

    :goto_0
    iput-object p1, p0, Ls0/d;->G:Lk0/D;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ls0/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Ls0/d;->G:Lk0/D;

    if-eqz p2, :cond_0

    invoke-static {}, Lw0/h;->c()F

    move-result p3

    iget v0, p2, Lk0/D;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iget p2, p2, Lk0/D;->b:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, v0, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Ls0/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public final e(Lx0/c;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Ls0/b;->e(Lx0/c;Ljava/lang/Object;)V

    sget-object v0, Lk0/G;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_0

    iput-object v1, p0, Ls0/d;->H:Ln0/x;

    goto :goto_0

    :cond_0
    new-instance p2, Ln0/x;

    invoke-direct {p2, p1, v1}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ls0/d;->H:Ln0/x;

    goto :goto_0

    :cond_1
    sget-object v0, Lk0/G;->N:Landroid/graphics/Bitmap;

    if-ne p2, v0, :cond_3

    if-nez p1, :cond_2

    iput-object v1, p0, Ls0/d;->I:Ln0/x;

    goto :goto_0

    :cond_2
    new-instance p2, Ln0/x;

    invoke-direct {p2, p1, v1}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ls0/d;->I:Ln0/x;

    :cond_3
    :goto_0
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 14

    move-object v1, p0

    iget-object v0, v1, Ls0/d;->I:Ln0/x;

    iget-object v2, v1, Ls0/b;->p:Lcom/airbnb/lottie/a;

    iget-object v3, v1, Ls0/d;->G:Lk0/D;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, v1, Ls0/b;->q:Ls0/e;

    iget-object v0, v0, Ls0/e;->g:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/airbnb/lottie/a;->h()Lo0/b;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    iget-object v7, v5, Lo0/b;->b:Ljava/lang/String;

    iget-object v8, v5, Lo0/b;->c:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk0/D;

    if-nez v8, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v9, v8, Lk0/D;->d:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_2

    move-object v0, v9

    goto/16 :goto_3

    :cond_2
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v11, 0xa0

    iput v11, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v11, "data:"

    iget-object v12, v8, Lk0/D;->c:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "base64,"

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_3

    const/16 v7, 0x2c

    :try_start_0
    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v10

    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v8, v7

    invoke-static {v7, v4, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Lo0/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "data URL did not have correct base64 format."

    invoke-static {v5, v0}, Lw0/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v5, Lo0/b;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {v7, v6, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    sget-object v9, Lw0/h;->a:Lw0/g;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget v11, v8, Lk0/D;->a:I

    iget v8, v8, Lk0/D;->b:I

    if-ne v9, v11, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v8, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v7, v11, v8, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    move-object v7, v8

    :goto_0
    invoke-virtual {v5, v0, v7}, Lo0/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_1
    move-object v0, v7

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v0

    const-string v0, "Unable to decode image."

    invoke-static {v0, v5}, Lw0/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    const-string v5, "Unable to open asset."

    invoke-static {v5, v0}, Lw0/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    move-object v0, v6

    :goto_3
    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    iget-object v0, v3, Lk0/D;->d:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_8
    move-object v0, v6

    :goto_4
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_c

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {}, Lw0/h;->c()F

    move-result v5

    iget-object v6, v1, Ls0/d;->D:Ll0/a;

    move/from16 v7, p3

    invoke-virtual {v6, v7}, Ll0/a;->setAlpha(I)V

    iget-object v7, v1, Ls0/d;->H:Ln0/x;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/ColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v9, v1, Ls0/d;->E:Landroid/graphics/Rect;

    invoke-virtual {v9, v4, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v2, v2, Lcom/airbnb/lottie/a;->p:Z

    iget-object v1, v1, Ls0/d;->F:Landroid/graphics/Rect;

    if-eqz v2, :cond_b

    iget v2, v3, Lk0/D;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, v3, Lk0/D;->b:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_5
    move-object v2, p1

    invoke-virtual {p1, v0, v9, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    :goto_6
    return-void
.end method
