.class Lcom/android/quickstep/views/FloatingTaskView$2;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "SourceFile"


# instance fields
.field final mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mTaskViewScaleX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mTaskViewScaleY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic this$0:Lcom/android/quickstep/views/FloatingTaskView;

.field final synthetic val$animDuration:J

.field final synthetic val$floatingTaskViewBounds:Landroid/graphics/RectF;

.field final synthetic val$prop:Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;

.field final synthetic val$startingBounds:Landroid/graphics/RectF;

.field final synthetic val$timings:Lcom/android/quickstep/util/SplitAnimationTimings;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/FloatingTaskView;Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;JLcom/android/quickstep/util/SplitAnimationTimings;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 14

    move-object v7, p0

    move-wide/from16 v0, p3

    move-object v2, p1

    iput-object v2, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->this$0:Lcom/android/quickstep/views/FloatingTaskView;

    move-object/from16 v8, p2

    iput-object v8, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->val$prop:Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;

    iput-wide v0, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->val$animDuration:J

    move-object/from16 v9, p5

    iput-object v9, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->val$timings:Lcom/android/quickstep/util/SplitAnimationTimings;

    move-object/from16 v2, p6

    iput-object v2, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    move-object/from16 v2, p7

    iput-object v2, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->val$startingBounds:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    new-instance v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v11, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->a(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F

    move-result v3

    const/4 v12, 0x0

    long-to-float v13, v0

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideStartOffset()F

    move-result v1

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideEndOffset()F

    move-result v2

    invoke-static {v1, v2, v0}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v10

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v10, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->b(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F

    move-result v3

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideStartOffset()F

    move-result v1

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideEndOffset()F

    move-result v2

    invoke-static {v1, v2, v0}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v6

    move-object v0, v10

    move-object v1, p0

    move v2, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v10, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->c(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F

    move-result v3

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectScaleXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideStartOffset()F

    move-result v1

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideEndOffset()F

    move-result v4

    invoke-static {v1, v4, v0}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v6

    move-object v0, v10

    move-object v1, p0

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v10, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->mTaskViewScaleX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->d(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F

    move-result v2

    const/4 v3, 0x0

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectScaleYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideStartOffset()F

    move-result v5

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideEndOffset()F

    move-result v6

    invoke-static {v5, v6, v4}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v4

    move-object p1, v0

    move-object/from16 p2, p0

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v13

    move-object/from16 p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v0, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->mTaskViewScaleY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public onUpdate(FZ)V
    .locals 2

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->val$startingBounds:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v0, v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->mTaskViewScaleX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v0, v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->mTaskViewScaleY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;FF)V

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->this$0:Lcom/android/quickstep/views/FloatingTaskView;

    iget-object p0, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    invoke-virtual {p2, p0, p1}, Lcom/android/quickstep/views/FloatingTaskView;->update(Landroid/graphics/RectF;F)V

    return-void
.end method
