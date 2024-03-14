.class public Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field private mBorderAnimator:Lcom/android/quickstep/util/BorderAnimator;

.field private final mBorderColor:I

.field private mContent:Landroid/view/View;

.field private mIcon1:Landroid/widget/ImageView;

.field private mIcon2:Landroid/widget/ImageView;

.field private mThumbnailView1:Landroid/widget/ImageView;

.field private mThumbnailView2:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    sget-object v0, Lcom/android/launcher3/R$styleable;->TaskView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/4 p3, -0x1

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mBorderColor:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static applyIcon(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applyThumbnail(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$$ExternalSyntheticLambda3;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_3

    iget-object p0, p2, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_3
    new-instance v0, Lcom/android/launcher3/taskbar/i;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/i;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Landroid/widget/ImageView;)V

    iget-object p0, p3, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$$ExternalSyntheticLambda3;->a:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->c(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->c(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Lcom/android/quickstep/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mIcon1:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyIcon(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static s(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic t(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mIcon2:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyIcon(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f13019d

    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mBorderAnimator:Lcom/android/quickstep/util/BorderAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/BorderAnimator;->drawBorder(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final getFocusAnimator(Z)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mBorderAnimator:Lcom/android/quickstep/util/BorderAnimator;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/BorderAnimator;->buildAnimator(Z)Landroid/animation/Animator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 7

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a038b

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mThumbnailView1:Landroid/widget/ImageView;

    const v0, 0x7f0a038c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mThumbnailView2:Landroid/widget/ImageView;

    const v0, 0x7f0a01c8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mIcon1:Landroid/widget/ImageView;

    const v0, 0x7f0a01c9

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mIcon2:Landroid/widget/ImageView;

    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mContent:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/util/BorderAnimator;

    const v2, 0x7f070226

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mBorderColor:I

    new-instance v4, Lcom/android/quickstep/util/BorderAnimator$ScalingParams;

    const v5, 0x7f07021f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v5, Lcom/android/launcher3/taskbar/g;

    invoke-direct {v5, p0}, Lcom/android/launcher3/taskbar/g;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;)V

    iget-object v6, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mContent:Landroid/view/View;

    invoke-direct {v4, v0, v5, p0, v6}, Lcom/android/quickstep/util/BorderAnimator$ScalingParams;-><init>(ILcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;Landroid/view/View;Landroid/view/View;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/quickstep/util/BorderAnimator;-><init>(IILcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mBorderAnimator:Lcom/android/quickstep/util/BorderAnimator;

    return-void
.end method

.method public final setThumbnails(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$$ExternalSyntheticLambda3;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$$ExternalSyntheticLambda3;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mThumbnailView1:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyThumbnail(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$$ExternalSyntheticLambda3;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mThumbnailView2:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyThumbnail(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$$ExternalSyntheticLambda3;)V

    if-nez p4, :cond_1

    iget-object p3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mIcon1:Landroid/widget/ImageView;

    invoke-static {p3, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyIcon(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object p3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mIcon2:Landroid/widget/ImageView;

    invoke-static {p3, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyIcon(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;)V

    if-nez p2, :cond_0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f13019d

    invoke-virtual {p3, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    new-instance p3, Lcom/android/launcher3/taskbar/h;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/h;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;I)V

    iget-object p4, p4, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$$ExternalSyntheticLambda3;->a:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    iget-object v0, p4, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->c(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->c(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Lcom/android/quickstep/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance p3, Lcom/android/launcher3/taskbar/h;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p2, p1, v0}, Lcom/android/launcher3/taskbar/h;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;I)V

    iget-object p0, p4, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->c(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->c(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Lcom/android/quickstep/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    return-void
.end method
