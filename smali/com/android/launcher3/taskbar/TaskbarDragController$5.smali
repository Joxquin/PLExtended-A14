.class final Lcom/android/launcher3/taskbar/TaskbarDragController$5;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "SourceFile"


# instance fields
.field final mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic val$animListener:Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;


# direct methods
.method public constructor <init>(F[IFFFLcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;)V
    .locals 13

    move-object v7, p0

    move-object/from16 v0, p6

    iput-object v0, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->val$animListener:Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    new-instance v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v0, 0x0

    aget v0, p2, v0

    int-to-float v3, v0

    const/4 v9, 0x0

    const/high16 v10, 0x43960000    # 300.0f

    sget-object v11, Ly0/e;->n:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/high16 v5, 0x43960000    # 300.0f

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v8, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v0, 0x1

    aget v0, p2, v0

    int-to-float v3, v0

    move-object v0, v8

    move/from16 v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v8, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, v8

    move/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v8, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Ly0/e;->x:Landroid/view/animation/Interpolator;

    move-object v0, v8

    move v2, v12

    move/from16 v3, p5

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v8, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public final onUpdate(FZ)V
    .locals 2

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->val$animListener:Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p2, p2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v0, v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p0, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-interface {p1, p2, v0, v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;->updateDragShadow(FFFF)V

    return-void
.end method
