.class public Lcom/android/systemui/shared/regionsampling/RegionSampler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;


# static fields
.field public static final Companion:Lcom/android/systemui/shared/regionsampling/RegionSampler$Companion;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RegionSampler"


# instance fields
.field private final bgExecutor:Ljava/util/concurrent/Executor;

.field private darkForegroundColor:I

.field private final displaySize:Landroid/graphics/Point;

.field private initialSampling:Landroid/app/WallpaperColors;

.field private final isLockscreen:Z

.field private final layoutChangedListener:Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;

.field private lightForegroundColor:I

.field private final mainExecutor:Ljava/util/concurrent/Executor;

.field private regionDarkness:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

.field private final regionSamplingEnabled:Z

.field private final sampledView:Landroid/view/View;

.field private samplingBounds:Landroid/graphics/Rect;

.field private final tmpScreenLocation:[I

.field private final updateForegroundColor:Lm3/a;

.field private final wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shared/regionsampling/RegionSampler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/regionsampling/RegionSampler$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->Companion:Lcom/android/systemui/shared/regionsampling/RegionSampler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZLm3/a;)V
    .locals 11

    .line 1
    const-string v0, "sampledView"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateForegroundColor"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/shared/regionsampling/RegionSampler;-><init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLandroid/app/WallpaperManager;Lm3/a;ILkotlin/jvm/internal/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLandroid/app/WallpaperManager;Lm3/a;)V
    .locals 1

    const-string v0, "sampledView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateForegroundColor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 7
    iput-boolean p4, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionSamplingEnabled:Z

    .line 8
    iput-boolean p5, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->isLockscreen:Z

    .line 9
    iput-object p6, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->wallpaperManager:Landroid/app/WallpaperManager;

    .line 10
    iput-object p7, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->updateForegroundColor:Lm3/a;

    .line 11
    sget-object p2, Lcom/android/systemui/shared/regionsampling/RegionDarkness;->DEFAULT:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionDarkness:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    .line 12
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->samplingBounds:Landroid/graphics/Rect;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 13
    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->tmpScreenLocation:[I

    const/4 p2, -0x1

    .line 14
    iput p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->lightForegroundColor:I

    const/high16 p2, -0x1000000

    .line 15
    iput p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->darkForegroundColor:I

    .line 16
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->displaySize:Landroid/graphics/Point;

    .line 17
    new-instance p3, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;-><init>(Lcom/android/systemui/shared/regionsampling/RegionSampler;)V

    iput-object p3, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->layoutChangedListener:Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLandroid/app/WallpaperManager;Lm3/a;ILkotlin/jvm/internal/f;)V
    .locals 9

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p6

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v8, p7

    .line 20
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/shared/regionsampling/RegionSampler;-><init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLandroid/app/WallpaperManager;Lm3/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLm3/a;)V
    .locals 11

    .line 2
    const-string v0, "sampledView"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateForegroundColor"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/shared/regionsampling/RegionSampler;-><init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLandroid/app/WallpaperManager;Lm3/a;ILkotlin/jvm/internal/f;)V

    return-void
.end method

.method public static final synthetic access$getInitialSampling$p(Lcom/android/systemui/shared/regionsampling/RegionSampler;)Landroid/app/WallpaperColors;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->initialSampling:Landroid/app/WallpaperColors;

    return-object p0
.end method

.method public static final synthetic access$setInitialSampling$p(Lcom/android/systemui/shared/regionsampling/RegionSampler;Landroid/app/WallpaperColors;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->initialSampling:Landroid/app/WallpaperColors;

    return-void
.end method

.method public static synthetic getDisplaySize$annotations()V
    .locals 0

    return-void
.end method

.method private final getRegionDarkness(Z)Lcom/android/systemui/shared/regionsampling/RegionDarkness;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/android/systemui/shared/regionsampling/RegionDarkness;->DARK:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/shared/regionsampling/RegionDarkness;->LIGHT:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final calculateScreenLocation(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 4

    const-string v0, "sampledView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->tmpScreenLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->samplingBounds:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iput v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->samplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->samplingBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    if-le v0, v2, :cond_0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->samplingBounds:Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public final convertBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    const-string v0, "originalBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->displaySize:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget v2, p1, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/4 v3, 0x0

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/4 v4, 0x1

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v2, v0

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    int-to-float p0, p0

    div-float/2addr v0, p0

    iput v0, v1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p1, p0

    iput p1, v1, Landroid/graphics/RectF;->bottom:F

    return-object v1
.end method

.method public final currentForegroundColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionDarkness:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    invoke-virtual {v0}, Lcom/android/systemui/shared/regionsampling/RegionDarkness;->isDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->lightForegroundColor:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->darkForegroundColor:I

    :goto_0
    return p0
.end method

.method public final currentRegionDarkness()Lcom/android/systemui/shared/regionsampling/RegionDarkness;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionDarkness:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "pw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[RegionSampler]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionSamplingEnabled:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "regionSamplingEnabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionDarkness:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "regionDarkness: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->lightForegroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lightForegroundColor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->darkForegroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "darkForegroundColor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "passed-in sampledView: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->samplingBounds:Landroid/graphics/Rect;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calculated samplingBounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sampledView width: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sampledView height: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "screen width: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screen height: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->calculateScreenLocation(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->convertBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sampledRegionWithOffset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->isLockscreen:Z

    if-eqz v0, :cond_1

    const-string v0, "lockscreen"

    goto :goto_0

    :cond_1
    const-string v0, "homescreen"

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->initialSampling:Landroid/app/WallpaperColors;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialSampling for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getBgExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->bgExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getDisplaySize()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->displaySize:Landroid/graphics/Point;

    return-object p0
.end method

.method public final getMainExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->mainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getRegionSamplingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionSamplingEnabled:Z

    return p0
.end method

.method public final getSampledView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    return-object p0
.end method

.method public final getUpdateForegroundColor()Lm3/a;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->updateForegroundColor:Lm3/a;

    return-object p0
.end method

.method public final getWallpaperManager()Landroid/app/WallpaperManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->wallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method public final isLockscreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->isLockscreen:Z

    return p0
.end method

.method public onColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p2

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_0

    move p1, v0

    :cond_0
    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->getRegionDarkness(Z)Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionDarkness:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->updateForegroundColor:Lm3/a;

    invoke-interface {p0}, Lm3/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final setForegroundColors(II)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->lightForegroundColor:I

    iput p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->darkForegroundColor:I

    return-void
.end method

.method public final startRegionSampler()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionSamplingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->layoutChangedListener:Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->calculateScreenLocation(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->convertBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_6

    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v5

    if-gtz v1, :cond_6

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_6

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->wallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v2, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->isLockscreen:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, p0, v1, v3}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;I)V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->bgExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_6

    new-instance v2, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1;-><init>(Lcom/android/systemui/shared/regionsampling/RegionSampler;Landroid/graphics/RectF;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final stopRegionSampler()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->wallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->layoutChangedListener:Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
