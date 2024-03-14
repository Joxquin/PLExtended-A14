.class final Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allAppsBorderSpaces:[Landroid/graphics/PointF;

.field private final allAppsCellSize:[Landroid/graphics/PointF;

.field private final allAppsIconSizes:[F

.field private final allAppsIconTextSizes:[F

.field private final borderSpaces:[Landroid/graphics/PointF;

.field private final canBeDefault:Z

.field public final grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

.field private final horizontalMargin:[F

.field private final hotseatBarBottomSpace:[F

.field private final hotseatQsbSpace:[F

.field private final iconSizes:[F

.field private final minCellSize:[Landroid/graphics/PointF;

.field private final minHeightDps:F

.field private final minWidthDps:F

.field private final startAlignTaskbar:[Z

.field private final textSizes:[F

.field private final transientTaskbarIconSize:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V
    .locals 5

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/PointF;

    .line 119
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    new-array v1, v0, [Landroid/graphics/PointF;

    .line 120
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    new-array v1, v0, [F

    .line 121
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    new-array v1, v0, [F

    .line 122
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    new-array v1, v0, [F

    .line 123
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    new-array v1, v0, [F

    .line 124
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    new-array v1, v0, [F

    .line 125
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    new-array v1, v0, [Landroid/graphics/PointF;

    .line 126
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    new-array v1, v0, [F

    .line 127
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    new-array v1, v0, [F

    .line 128
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    new-array v1, v0, [Landroid/graphics/PointF;

    .line 129
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    new-array v1, v0, [F

    .line 130
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    new-array v1, v0, [Z

    .line 131
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    .line 132
    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    const/4 p1, 0x0

    .line 133
    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minWidthDps:F

    .line 134
    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minHeightDps:F

    const/4 v1, 0x0

    .line 135
    iput-boolean v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->canBeDefault:Z

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aput p1, v3, v2

    .line 137
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aput p1, v3, v2

    .line 138
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    .line 139
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    .line 140
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    .line 141
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aput p1, v3, v2

    .line 142
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aput p1, v3, v2

    .line 143
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    .line 144
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    aput p1, v3, v2

    .line 145
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    aput-boolean v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [Landroid/graphics/PointF;

    .line 2
    iput-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    new-array v3, v1, [Landroid/graphics/PointF;

    .line 3
    iput-object v3, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    new-array v4, v1, [F

    .line 4
    iput-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    new-array v5, v1, [F

    .line 5
    iput-object v5, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    new-array v6, v1, [F

    .line 6
    iput-object v6, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    new-array v7, v1, [F

    .line 7
    iput-object v7, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    new-array v8, v1, [F

    .line 8
    iput-object v8, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    new-array v9, v1, [Landroid/graphics/PointF;

    .line 9
    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    new-array v10, v1, [F

    .line 10
    iput-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    new-array v11, v1, [F

    .line 11
    iput-object v11, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    new-array v12, v1, [Landroid/graphics/PointF;

    .line 12
    iput-object v12, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    new-array v13, v1, [F

    .line 13
    iput-object v13, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    new-array v14, v1, [Z

    .line 14
    iput-object v14, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    move-object/from16 v15, p1

    .line 15
    iput-object v15, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 17
    sget-object v1, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption:[I

    move-object/from16 v17, v13

    move-object/from16 v16, v14

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    invoke-virtual {v14, v13, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v13, 0x45

    const/4 v14, 0x0

    .line 18
    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    iput v13, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minWidthDps:F

    const/16 v13, 0x44

    .line 19
    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    iput v13, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minHeightDps:F

    const/16 v13, 0x27

    const/4 v14, 0x0

    .line 20
    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->canBeDefault:Z

    const/16 v0, 0x40

    const/4 v13, 0x0

    .line 21
    invoke-virtual {v1, v0, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/16 v14, 0x3c

    .line 22
    invoke-virtual {v1, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 23
    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v0, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x0

    aput-object v13, v2, v0

    const/16 v14, 0x41

    .line 24
    iget v13, v13, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    aget-object v14, v2, v0

    .line 25
    iget v14, v14, Landroid/graphics/PointF;->y:F

    const/16 v0, 0x3d

    invoke-virtual {v1, v0, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 26
    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v13, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x1

    aput-object v14, v2, v0

    const/4 v13, 0x0

    aget-object v14, v2, v13

    .line 27
    iget v14, v14, Landroid/graphics/PointF;->x:F

    const/16 v0, 0x43

    invoke-virtual {v1, v0, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aget-object v14, v2, v13

    .line 28
    iget v14, v14, Landroid/graphics/PointF;->y:F

    const/16 v13, 0x3f

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 29
    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v0, v13}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x2

    aput-object v14, v2, v0

    const/4 v13, 0x0

    aget-object v14, v2, v13

    .line 30
    iget v14, v14, Landroid/graphics/PointF;->x:F

    const/16 v0, 0x42

    invoke-virtual {v1, v0, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aget-object v14, v2, v13

    .line 31
    iget v13, v14, Landroid/graphics/PointF;->y:F

    const/16 v14, 0x3e

    invoke-virtual {v1, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 32
    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v0, v13}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x3

    aput-object v14, v2, v0

    const/16 v13, 0x1b

    const/4 v14, 0x0

    .line 33
    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    const/16 v14, 0x1d

    .line 34
    invoke-virtual {v1, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    const/16 v0, 0x23

    .line 35
    invoke-virtual {v1, v0, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    move-object/from16 v18, v6

    const/16 v6, 0x20

    .line 36
    invoke-virtual {v1, v6, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    move-object/from16 v19, v5

    const/16 v5, 0x1c

    .line 37
    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v20, v15

    const/16 v15, 0x26

    .line 38
    invoke-virtual {v1, v15, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v21, v4

    .line 39
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v5, v15}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x1e

    .line 40
    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/16 v5, 0x1f

    .line 41
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 42
    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x1

    aput-object v14, v3, v4

    const/16 v4, 0x24

    .line 43
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/16 v5, 0x25

    .line 44
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 45
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x2

    aput-object v5, v3, v0

    const/16 v0, 0x21

    .line 46
    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/16 v4, 0x22

    .line 47
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 48
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v0, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x0

    aget-object v3, v2, v0

    .line 49
    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/16 v4, 0x10

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aget-object v2, v2, v0

    .line 50
    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 51
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v9, v0

    const/16 v2, 0x11

    .line 52
    iget v3, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aget-object v3, v9, v0

    .line 53
    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 54
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x1

    aput-object v4, v9, v2

    aget-object v2, v9, v0

    .line 55
    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/16 v3, 0x13

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aget-object v3, v9, v0

    .line 56
    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 57
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v4, v9, v2

    aget-object v2, v9, v0

    .line 58
    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aget-object v3, v9, v0

    .line 59
    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 60
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v4, v9, v2

    .line 61
    invoke-virtual {v1, v0, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x2

    .line 62
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/16 v3, 0x8

    .line 63
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    const/4 v5, 0x5

    .line 64
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/4 v6, 0x1

    .line 65
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    const/16 v13, 0xb

    .line 66
    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 67
    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v9, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v13, v12, v0

    const/4 v0, 0x3

    .line 68
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v0, 0x4

    .line 69
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 70
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v12, v6

    const/16 v0, 0x9

    .line 71
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/16 v2, 0xa

    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 73
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x2

    aput-object v3, v12, v0

    const/4 v0, 0x6

    .line 74
    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v2, 0x7

    .line 75
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 76
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x3

    aput-object v3, v12, v0

    const/16 v0, 0x34

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v2, 0x0

    aput v0, v7, v2

    const/16 v3, 0x35

    .line 78
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x1

    aput v0, v7, v3

    const/16 v0, 0x37

    aget v3, v7, v2

    .line 79
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x2

    aput v0, v7, v3

    const/16 v0, 0x36

    aget v3, v7, v2

    .line 80
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x3

    aput v0, v7, v3

    const/16 v0, 0x14

    aget v3, v7, v2

    .line 81
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v10, v2

    const/16 v3, 0x15

    .line 82
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x1

    aput v0, v10, v3

    const/16 v0, 0x17

    aget v3, v10, v2

    .line 83
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x2

    aput v0, v10, v3

    const/16 v0, 0x16

    aget v3, v10, v2

    .line 84
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x3

    aput v0, v10, v3

    const/16 v0, 0x38

    const/4 v3, 0x0

    .line 85
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v8, v2

    const/16 v3, 0x39

    .line 86
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x1

    aput v0, v8, v3

    const/16 v0, 0x3b

    aget v3, v8, v2

    .line 87
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x2

    aput v0, v8, v3

    const/16 v0, 0x3a

    aget v3, v8, v2

    .line 88
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x3

    aput v0, v8, v3

    const/16 v0, 0x18

    aget v3, v8, v2

    .line 89
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v11, v2

    const/4 v3, 0x1

    aput v0, v11, v3

    const/16 v3, 0x1a

    .line 90
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x2

    aput v0, v11, v3

    const/16 v0, 0x19

    aget v3, v11, v2

    .line 91
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x3

    aput v0, v11, v3

    const/16 v0, 0x28

    const/4 v4, 0x0

    .line 92
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v21, v2

    const/16 v4, 0x29

    .line 93
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v4, 0x1

    aput v0, v21, v4

    const/16 v0, 0x2a

    aget v4, v21, v2

    .line 94
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v21, v3

    const/16 v0, 0x2b

    aget v3, v21, v2

    .line 95
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x2

    aput v0, v21, v3

    .line 96
    sget-object v0, LD/n;->a:Ljava/lang/ThreadLocal;

    const v0, 0x7f070204

    move-object/from16 v3, v20

    .line 97
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const/16 v4, 0x2c

    .line 98
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v19, v2

    const/16 v4, 0x2d

    .line 99
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v4, 0x1

    aput v0, v19, v4

    const/16 v0, 0x2e

    aget v4, v19, v2

    .line 100
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v4, 0x3

    aput v0, v19, v4

    const/16 v0, 0x2f

    aget v4, v19, v2

    .line 101
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v4, 0x2

    aput v0, v19, v4

    const v0, 0x7f070207

    .line 102
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const/16 v4, 0x30

    .line 103
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v18, v2

    const/16 v4, 0x31

    .line 104
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v4, 0x1

    aput v0, v18, v4

    const/16 v0, 0x32

    aget v4, v18, v2

    .line 105
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v4, 0x3

    aput v0, v18, v4

    const/16 v0, 0x33

    aget v4, v18, v2

    .line 106
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v4, 0x2

    aput v0, v18, v4

    const v0, 0x7f07052b

    .line 107
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const/16 v3, 0x4b

    .line 108
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v17, v2

    const/16 v3, 0x4c

    .line 109
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x1

    aput v0, v17, v3

    const/16 v0, 0x4d

    aget v3, v17, v2

    .line 110
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x3

    aput v0, v17, v3

    const/16 v0, 0x4e

    aget v3, v17, v2

    .line 111
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x2

    aput v0, v17, v3

    const/16 v0, 0x47

    .line 112
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    aput-boolean v0, v16, v2

    const/16 v3, 0x48

    .line 113
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v3, 0x1

    aput-boolean v0, v16, v3

    const/16 v3, 0x49

    .line 114
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v3, 0x3

    aput-boolean v0, v16, v3

    const/16 v0, 0x4a

    aget-boolean v2, v16, v2

    .line 115
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v2, 0x2

    aput-boolean v0, v16, v2

    .line 116
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->canBeDefault:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minHeightDps:F

    return p0
.end method

.method public static bridge synthetic m(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minWidthDps:F

    return p0
.end method

.method public static bridge synthetic n(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    return-object p0
.end method

.method public static q(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v3, v3, v0

    iget v4, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v3, v3, v0

    iget v4, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v3, v3, v0

    iget v4, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v3, v3, v0

    iget v4, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    aget-boolean v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    aget-boolean v3, v3, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static r(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;F)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
