.class public final Lcom/android/launcher3/DeviceProfile$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDotRendererCache:Landroid/util/SparseArray;

.field private mInfo:Lcom/android/launcher3/util/DisplayController$Info;

.field private mInv:Lcom/android/launcher3/InvariantDeviceProfile;

.field private mIsGestureMode:Ljava/lang/Boolean;

.field private mIsMultiDisplay:Z

.field private mIsMultiWindowMode:Z

.field private mOverrideProvider:Ljava/util/function/Consumer;

.field private mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

.field private mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

.field private mWindowBounds:Lcom/android/launcher3/util/WindowBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsMultiWindowMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    iput-object p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInv:Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object p3, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/launcher3/DeviceProfile;
    .locals 13

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mWindowBounds:Lcom/android/launcher3/util/WindowBounds;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsGestureMode:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    iget-boolean v0, v0, Lcom/android/launcher3/util/NavigationMode;->hasGestures:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsGestureMode:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mDotRendererCache:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mDotRendererCache:Landroid/util/SparseArray;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/launcher3/DeviceProfile;->DEFAULT_PROVIDER:Lcom/android/launcher3/q;

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mOverrideProvider:Ljava/util/function/Consumer;

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/launcher3/DeviceProfile;->DEFAULT_DIMENSION_PROVIDER:Lcom/android/launcher3/r;

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mOverrideProvider:Ljava/util/function/Consumer;

    :cond_4
    new-instance v0, Lcom/android/launcher3/DeviceProfile;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mWindowBounds:Lcom/android/launcher3/util/WindowBounds;

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mDotRendererCache:Landroid/util/SparseArray;

    iget-boolean v7, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsMultiWindowMode:Z

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-boolean v9, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsMultiDisplay:Z

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsGestureMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v11, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    iget-object v12, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mOverrideProvider:Ljava/util/function/Consumer;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;Landroid/util/SparseArray;ZZZZLcom/android/launcher3/DeviceProfile$ViewScaleProvider;Ljava/util/function/Consumer;)V

    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Window bounds not set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setDotRendererCache(Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mDotRendererCache:Landroid/util/SparseArray;

    return-void
.end method

.method public final setGestureMode(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsGestureMode:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsMultiDisplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsMultiDisplay:Z

    return-void
.end method

.method public final setMultiWindowMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsMultiWindowMode:Z

    return-void
.end method

.method public final setTransposeLayoutWithOrientation()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

    return-void
.end method

.method public final setViewScaleProvider(Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    return-void
.end method

.method public final setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mWindowBounds:Lcom/android/launcher3/util/WindowBounds;

    return-void
.end method

.method public final withDimensionsOverride(Lcom/android/launcher3/taskbar/N;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mOverrideProvider:Ljava/util/function/Consumer;

    return-void
.end method
