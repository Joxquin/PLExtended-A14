.class public final Ll1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/List;


# instance fields
.field public final a:Ll1/u;

.field public final b:Lcom/android/internal/graphics/cam/Cam;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x12c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x190

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x1f4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x258

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0x2bc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x320

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0x384

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/n;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ll1/t;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ll1/u;I)V
    .locals 6

    const-string v0, "spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1/t;->a:Ll1/u;

    invoke-static {p2}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v0

    const-string v1, "fromInt(seedColor)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ll1/t;->b:Lcom/android/internal/graphics/cam/Cam;

    iget-object v1, p1, Ll1/u;->a:Ll1/l;

    invoke-interface {v1, v0}, Ll1/l;->a(Lcom/android/internal/graphics/cam/Cam;)D

    move-result-wide v1

    iget-object p1, p1, Ll1/u;->b:Ll1/a;

    invoke-interface {p1, v0}, Ll1/a;->a(Lcom/android/internal/graphics/cam/Cam;)D

    move-result-wide v3

    double-to-float p1, v1

    double-to-float v0, v3

    const/16 v1, 0xc

    new-array v2, v1, [I

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x42c60000    # 99.0f

    invoke-static {p1, v4, v5}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v2, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x42be0000    # 95.0f

    invoke-static {p1, v3, v4}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    :goto_0
    if-ge v3, v1, :cond_1

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    const v4, 0x42466666    # 49.6f

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, -0x1

    mul-int/lit8 v4, v4, 0xa

    rsub-int/lit8 v4, v4, 0x64

    int-to-float v4, v4

    :goto_1
    invoke-static {p1, v0, v4}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v5, v1, :cond_2

    aget v0, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iput-object p1, p0, Ll1/t;->c:Ljava/util/List;

    sget-object v0, Ll1/t;->e:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/s;->o(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/x;->f(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ll1/t;->d:Ljava/util/Map;

    iget-object p1, p0, Ll1/t;->a:Ll1/u;

    iget-object p1, p1, Ll1/u;->a:Ll1/l;

    iget-object v0, p0, Ll1/t;->b:Lcom/android/internal/graphics/cam/Cam;

    invoke-interface {p1, v0}, Ll1/l;->a(Lcom/android/internal/graphics/cam/Cam;)D

    move-result-wide v0

    double-to-float p1, v0

    iget-object v0, p0, Ll1/t;->a:Ll1/u;

    iget-object v0, v0, Ll1/u;->b:Ll1/a;

    iget-object p0, p0, Ll1/t;->b:Lcom/android/internal/graphics/cam/Cam;

    invoke-interface {v0, p0}, Ll1/a;->a(Lcom/android/internal/graphics/cam/Cam;)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p2}, Lcom/android/internal/graphics/cam/CamUtils;->lstarFromInt(I)F

    move-result p2

    invoke-static {p1, p0, p2}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    return-void
.end method
