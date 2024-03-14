.class public final Lcom/android/launcher3/folder/FolderAnimationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContent:Lcom/android/launcher3/folder/FolderPagedView;

.field private mContext:Landroid/content/Context;

.field private final mDelay:I

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private final mDuration:I

.field private mFolder:Lcom/android/launcher3/folder/Folder;

.field private mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private final mFolderInterpolator:Landroid/animation/TimeInterpolator;

.field private final mIsOpening:Z

.field private final mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

.field private final mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

.field private mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

.field private final mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

.field private final mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    new-instance v0, Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0012

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    const p2, 0x7f0b0011

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDelay:I

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    const p2, 0x7f0c001c

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    const p2, 0x7f0c000e

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    const p2, 0x7f0c001a

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/folder/FolderAnimationManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    return p0
.end method

.method private getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;
    .locals 3

    .line 158
    iget-boolean p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_0

    new-array p0, v2, [F

    aput p3, p0, v1

    aput p4, p0, v0

    .line 159
    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p0, v2, [F

    aput p4, p0, v1

    aput p3, p0, v0

    .line 160
    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .locals 2

    invoke-virtual {p2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    iget p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    int-to-long v0, p0

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method


# virtual methods
.method public final getAnimator()Landroid/animation/AnimatorSet;
    .locals 29

    move-object/from16 v6, p0

    .line 1
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 3
    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    .line 4
    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 5
    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    .line 6
    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)V

    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 7
    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->previewItemsForPage(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iget-object v7, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v7, v7, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v7}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v7

    iget-object v8, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 10
    invoke-virtual {v7, v8, v5}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v7

    .line 11
    iget-object v8, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v8

    mul-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    mul-float/2addr v9, v7

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v10

    .line 13
    invoke-virtual {v1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getIconSize()F

    move-result v1

    mul-float/2addr v1, v10

    .line 14
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    mul-float/2addr v2, v7

    .line 15
    iget-boolean v11, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v11, :cond_0

    move v12, v2

    goto :goto_0

    :cond_0
    const/high16 v12, 0x3f800000    # 1.0f

    .line 16
    :goto_0
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 17
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 18
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v13, v13, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 19
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v13, v13, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 20
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v13, v13, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 21
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v13, v13, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 22
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v13, v13, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v13, v12}, Landroid/view/View;->setScaleX(F)V

    .line 23
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v13, v13, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v13, v12}, Landroid/view/View;->setScaleY(F)V

    .line 24
    iget-object v12, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v12, v12, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v12, v14}, Landroid/view/View;->setPivotX(F)V

    .line 25
    iget-object v12, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v12, v12, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v12, v14}, Landroid/view/View;->setPivotY(F)V

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    float-to-int v1, v1

    .line 26
    iget-object v12, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 27
    iget v12, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v12, v12

    mul-float/2addr v12, v2

    sub-float/2addr v12, v9

    int-to-float v1, v1

    sub-float/2addr v12, v1

    float-to-int v1, v12

    .line 28
    :cond_1
    iget-object v12, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v2

    float-to-int v12, v12

    .line 29
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v2

    float-to-int v13, v13

    .line 30
    iget v15, v5, Landroid/graphics/Rect;->left:I

    iget-object v14, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v14

    add-int/2addr v14, v15

    iget-object v15, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 31
    iget v10, v15, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    .line 32
    invoke-virtual {v15}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v17

    .line 33
    iget v15, v15, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 v15, v15, 0x2

    sub-int v17, v17, v15

    sub-int v10, v10, v17

    int-to-float v10, v10

    mul-float/2addr v10, v7

    .line 34
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v10, v14

    sub-int/2addr v10, v12

    sub-int/2addr v10, v1

    .line 35
    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v14, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v14

    add-int/2addr v14, v5

    iget-object v5, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 36
    iget v15, v5, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    .line 37
    invoke-virtual {v5}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v17

    .line 38
    iget v5, v5, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int v17, v17, v5

    sub-int v15, v15, v17

    int-to-float v5, v15

    mul-float/2addr v5, v7

    .line 39
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, v14

    sub-int/2addr v5, v13

    .line 40
    iget v14, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    sub-int/2addr v10, v14

    int-to-float v10, v10

    .line 41
    iget v14, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    sub-int/2addr v5, v14

    int-to-float v5, v5

    .line 42
    iget-object v14, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f04023d

    .line 43
    invoke-static {v15, v14}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v14

    .line 44
    iget-object v15, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040233

    .line 45
    invoke-static {v4, v15}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v4

    .line 46
    iget-object v15, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 47
    iget-object v15, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v18, v3

    if-eqz v11, :cond_2

    move v3, v14

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {v15, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/2addr v12, v1

    .line 48
    new-instance v3, Landroid/graphics/Rect;

    int-to-float v15, v12

    add-float/2addr v15, v9

    .line 49
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v25, v1

    int-to-float v1, v13

    add-float/2addr v1, v9

    .line 50
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v3, v12, v13, v15, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v12, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v13, 0x0

    invoke-direct {v1, v13, v13, v9, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 52
    iget-object v9, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v9

    .line 53
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 54
    new-instance v13, Lcom/android/launcher3/anim/PropertyResetListener;

    sget-object v15, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    move/from16 v26, v7

    const/high16 v16, 0x3f800000    # 1.0f

    .line 55
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v13, v15, v7}, Lcom/android/launcher3/anim/PropertyResetListener;-><init>(Landroid/util/Property;Ljava/lang/Object;)V

    .line 56
    iget-object v7, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v15, v7, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v15}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v15

    move/from16 v27, v8

    .line 57
    invoke-virtual {v7}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v28, v0

    .line 58
    iget-object v0, v7, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 59
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 60
    iget-object v7, v7, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result v7

    if-ne v15, v0, :cond_3

    mul-int v0, v7, v15

    sub-int v19, v19, v0

    move/from16 v0, v19

    goto :goto_2

    :cond_3
    move v0, v7

    :goto_2
    mul-int/2addr v15, v7

    add-int v7, v15, v0

    move/from16 v19, v15

    .line 61
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 62
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v0, v19

    :goto_3
    if-ge v0, v7, :cond_4

    .line 63
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v7

    move-object/from16 v7, v19

    check-cast v7, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move/from16 v7, v20

    goto :goto_3

    .line 64
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/BubbleTextView;

    if-eqz v11, :cond_5

    const/4 v15, 0x0

    .line 65
    invoke-virtual {v7, v15}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 66
    :cond_5
    invoke-virtual {v7}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v11, :cond_6

    move-object/from16 v19, v0

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    move-object/from16 v19, v0

    const/4 v15, 0x0

    .line 67
    :goto_5
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    new-array v8, v8, [F

    const/16 v17, 0x0

    aput v15, v8, v17

    invoke-static {v7, v0, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    invoke-direct {v6, v12, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    move-object/from16 v0, v19

    goto :goto_4

    .line 70
    :cond_7
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    const-string v7, "color"

    if-eqz v11, :cond_8

    .line 71
    filled-new-array {v14, v4}, [I

    move-result-object v4

    invoke-static {v0, v7, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_6

    .line 72
    :cond_8
    filled-new-array {v4, v14}, [I

    move-result-object v4

    invoke-static {v0, v7, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 73
    :goto_6
    invoke-direct {v6, v12, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 74
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v4, v10, v7}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v12, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 75
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {v6, v0, v4, v5, v7}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v12, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 76
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v6, v0, v4, v2, v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v12, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 77
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-direct {v6, v0, v4, v2, v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v12, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 78
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    const/4 v7, 0x4

    if-le v0, v7, :cond_9

    move v0, v8

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    .line 79
    :goto_7
    iget v4, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    if-eqz v0, :cond_b

    if-eqz v11, :cond_a

    .line 80
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v4, -0x80

    const/16 v10, 0x80

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    move v10, v4

    const/4 v0, 0x0

    .line 81
    :goto_8
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v13, v13, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v6, v13, v14, v5, v15}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v13

    int-to-long v14, v0

    .line 82
    invoke-virtual {v13, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    int-to-long v14, v10

    .line 83
    invoke-virtual {v13, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 84
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 85
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v19

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    xor-int/lit8 v5, v11, 0x1

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v22, v1

    move/from16 v23, v9

    move/from16 v24, v5

    invoke-virtual/range {v19 .. v24}, Lcom/android/launcher3/graphics/IconShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v12, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 86
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v10, v0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    .line 87
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 88
    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    if-eqz v11, :cond_c

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    goto :goto_9

    :cond_c
    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v1

    .line 89
    :goto_9
    iget-object v3, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    move-object/from16 v13, v28

    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-int/2addr v1, v14

    add-int/2addr v1, v3

    .line 90
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v10, v1

    const/4 v14, 0x0

    invoke-direct {v3, v1, v14, v10, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    iget v10, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v10, v1

    iget v13, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {v0, v1, v14, v10, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v19

    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 93
    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v0

    move/from16 v23, v9

    move/from16 v24, v5

    .line 94
    invoke-virtual/range {v19 .. v24}, Lcom/android/launcher3/graphics/IconShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v12, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 95
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    if-eqz v11, :cond_d

    const/4 v1, 0x0

    goto :goto_a

    :cond_d
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V

    .line 96
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v6, v0, v1, v3, v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v9, 0x0

    if-eqz v11, :cond_e

    const-wide/16 v13, 0x20

    goto :goto_b

    :cond_e
    move-wide v13, v9

    :goto_b
    if-eqz v11, :cond_f

    add-int/lit8 v1, v4, -0x20

    goto :goto_c

    :cond_f
    const/16 v1, 0x20

    .line 97
    :goto_c
    invoke-virtual {v0, v13, v14}, Landroid/animation/Animator;->setStartDelay(J)V

    int-to-long v13, v1

    .line 98
    invoke-virtual {v0, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 99
    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 100
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v0, v2

    sub-float/2addr v0, v1

    .line 101
    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    neg-float v0, v0

    const/4 v5, 0x0

    invoke-direct {v6, v1, v3, v0, v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v12, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 102
    div-int/lit8 v4, v4, 0x2

    .line 103
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getElevation()F

    move-result v3

    neg-float v3, v3

    invoke-direct {v6, v0, v1, v3, v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v11, :cond_10

    int-to-long v9, v4

    .line 104
    :cond_10
    invoke-virtual {v0, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    int-to-long v3, v4

    .line 105
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 106
    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 107
    new-instance v0, Lcom/android/launcher3/folder/FolderAnimationManager$1;

    invoke-direct {v0, v6}, Lcom/android/launcher3/folder/FolderAnimationManager$1;-><init>(Lcom/android/launcher3/folder/FolderAnimationManager;)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 108
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v3, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 109
    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_d

    .line 110
    :cond_11
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 111
    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    .line 112
    div-int/lit8 v0, v0, 0x2

    sub-int v9, v27, v0

    div-float v10, v2, v26

    move/from16 v1, v25

    int-to-float v0, v1

    div-float v0, v0, v26

    float-to-int v0, v0

    add-int v13, v0, v9

    .line 113
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 114
    iget-object v14, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    .line 115
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_12

    move v0, v8

    goto :goto_e

    :cond_12
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_13

    const/4 v1, 0x0

    goto :goto_f

    .line 116
    :cond_13
    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    .line 117
    :goto_f
    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    move-object/from16 v4, v18

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)V

    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 118
    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->previewItemsForPage(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v15

    .line 119
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v0, :cond_14

    move v4, v5

    goto :goto_10

    :cond_14
    move v4, v7

    .line 120
    :goto_10
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    if-le v0, v7, :cond_15

    move v0, v8

    goto :goto_11

    :cond_15
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_17

    if-eqz v11, :cond_16

    .line 121
    iget-object v3, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_12

    .line 122
    :cond_16
    iget-object v3, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

    .line 123
    :cond_17
    :goto_12
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    :goto_13
    if-ge v1, v5, :cond_1c

    .line 124
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 125
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 126
    iput-boolean v8, v7, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 127
    invoke-virtual {v2, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    .line 128
    invoke-virtual {v14, v4}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v17

    .line 129
    invoke-virtual {v14}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getIconSize()F

    move-result v19

    mul-float v19, v19, v17

    .line 130
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v8

    int-to-float v8, v8

    div-float v19, v19, v8

    div-float v8, v19, v10

    move-object/from16 v17, v2

    if-eqz v11, :cond_18

    move v2, v8

    goto :goto_14

    :cond_18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 131
    :goto_14
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 133
    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {v14, v1, v4, v2}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move/from16 v21, v1

    .line 134
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v22

    sub-int v1, v1, v22

    int-to-float v1, v1

    mul-float v1, v1, v19

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    move/from16 v22, v4

    .line 135
    iget v4, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    int-to-float v1, v1

    sub-float/2addr v4, v1

    int-to-float v1, v13

    add-float/2addr v4, v1

    div-float/2addr v4, v10

    float-to-int v1, v4

    .line 136
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v19

    .line 137
    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    move/from16 v19, v5

    int-to-float v5, v9

    add-float/2addr v2, v5

    sub-float/2addr v2, v4

    div-float/2addr v2, v10

    float-to-int v2, v2

    .line 138
    iget v4, v7, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    sub-int/2addr v1, v4

    int-to-float v4, v1

    .line 139
    iget v1, v7, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    sub-int/2addr v2, v1

    int-to-float v5, v2

    .line 140
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v1, v4, v7}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    invoke-direct {v6, v12, v1}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 143
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {v6, v0, v2, v5, v7}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    .line 144
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    invoke-direct {v6, v12, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 146
    sget-object v7, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    move/from16 v23, v9

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v0, v7, v8, v9}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v7

    .line 147
    invoke-virtual {v7, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    invoke-direct {v6, v12, v7}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 149
    iget-object v9, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v9

    move/from16 v24, v10

    const/4 v10, 0x4

    if-le v9, v10, :cond_1b

    .line 150
    iget v9, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDelay:I

    if-eqz v11, :cond_19

    goto :goto_15

    :cond_19
    mul-int/lit8 v9, v9, 0x2

    :goto_15
    move/from16 v18, v11

    if-eqz v11, :cond_1a

    int-to-long v10, v9

    .line 151
    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 152
    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 153
    invoke-virtual {v7, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 154
    :cond_1a
    invoke-virtual {v1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v10

    move/from16 v26, v13

    move-object/from16 v27, v14

    int-to-long v13, v9

    sub-long/2addr v10, v13

    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 155
    invoke-virtual {v2}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v9

    sub-long/2addr v9, v13

    invoke-virtual {v2, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 156
    invoke-virtual {v7}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v1

    sub-long/2addr v1, v13

    invoke-virtual {v7, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_16

    :cond_1b
    move/from16 v18, v11

    move/from16 v26, v13

    move-object/from16 v27, v14

    .line 157
    :goto_16
    new-instance v7, Lcom/android/launcher3/folder/FolderAnimationManager$2;

    move-object v2, v0

    move-object v0, v7

    move/from16 v9, v21

    move-object/from16 v1, p0

    move-object/from16 v10, v17

    move-object v11, v3

    move v3, v4

    move/from16 v13, v22

    move v4, v5

    move/from16 v14, v19

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager$2;-><init>(Lcom/android/launcher3/folder/FolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFF)V

    invoke-virtual {v12, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v1, v9, 0x1

    move-object v2, v10

    move-object v3, v11

    move v4, v13

    move v5, v14

    move/from16 v11, v18

    move/from16 v9, v23

    move/from16 v10, v24

    move/from16 v13, v26

    move-object/from16 v14, v27

    const/4 v7, 0x4

    const/4 v8, 0x1

    goto/16 :goto_13

    :cond_1c
    return-object v12
.end method
