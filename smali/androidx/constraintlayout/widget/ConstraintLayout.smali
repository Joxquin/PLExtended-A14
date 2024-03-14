.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_DRAW_CONSTRAINTS:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final OPTIMIZE_HEIGHT_CHANGE:Z = false

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-2.2.0-alpha04"

.field private static sSharedValues:Landroidx/constraintlayout/widget/x;


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;

.field private mConstraintHelpers:Ljava/util/ArrayList;

.field protected mConstraintLayoutSpec:Landroidx/constraintlayout/widget/i;

.field private mConstraintSet:Landroidx/constraintlayout/widget/q;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;

.field protected mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field protected mLayoutWidget:Lv/g;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field mMeasurer:Landroidx/constraintlayout/widget/e;

.field private mMetrics:Lt/g;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mModifiers:Ljava/util/ArrayList;

.field private mOnMeasureHeightMeasureSpec:I

.field private mOnMeasureWidthMeasureSpec:I

.field private mOptimizationLevel:I

.field private mTempMapIdToWidget:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lv/g;

    invoke-direct {p1}, Lv/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/q;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/i;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 15
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 16
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 17
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 18
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 19
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 20
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 21
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 22
    new-instance v1, Landroidx/constraintlayout/widget/e;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/e;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    .line 23
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 24
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 25
    invoke-direct {p0, v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 29
    new-instance p1, Lv/g;

    invoke-direct {p1}, Lv/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 31
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 32
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 33
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    .line 35
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/q;

    .line 37
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/i;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 40
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 41
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 42
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 43
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 44
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 45
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Landroidx/constraintlayout/widget/e;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/e;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    .line 48
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 49
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 50
    invoke-direct {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 54
    new-instance p1, Lv/g;

    invoke-direct {p1}, Lv/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 56
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 57
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 58
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    .line 60
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/q;

    .line 62
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/i;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 65
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 66
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 67
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 68
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 69
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 70
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroidx/constraintlayout/widget/e;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/e;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    .line 73
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 74
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 75
    invoke-direct {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 79
    new-instance p1, Lv/g;

    invoke-direct {p1}, Lv/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 81
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 82
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 83
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    .line 85
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/q;

    .line 87
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/i;

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 90
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 91
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 92
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 93
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 94
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 95
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroidx/constraintlayout/widget/e;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/e;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    .line 98
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 99
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 100
    invoke-direct {p0, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Lt/g;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    return p0
.end method

.method public static synthetic access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getPaddingWidth()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, v0

    if-lez p0, :cond_0

    move v2, p0

    :cond_0
    return v2
.end method

.method public static getSharedValues()Landroidx/constraintlayout/widget/x;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/x;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/widget/x;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/x;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/x;

    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/x;

    return-object v0
.end method

.method private getTargetWidget(I)Lv/f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_1
    if-ne v0, p0, :cond_2

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    return-object p0

    :cond_2
    if-nez v0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/d;

    iget-object p0, p0, Landroidx/constraintlayout/widget/d;->q0:Lv/f;

    :goto_0
    return-object p0
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iput-object p0, v0, Lv/f;->i0:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    iput-object v1, v0, Lv/g;->w0:Landroidx/constraintlayout/widget/e;

    iget-object v0, v0, Lv/g;->u0:Lw/g;

    iput-object v1, v0, Lw/g;->f:Landroidx/constraintlayout/widget/e;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/q;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/w;->b:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    if-ge v1, p2, :cond_7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    goto :goto_2

    :cond_0
    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    goto :goto_2

    :cond_1
    const/16 v3, 0xe

    if-ne v2, v3, :cond_2

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    goto :goto_2

    :cond_2
    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    goto :goto_2

    :cond_3
    const/16 v3, 0x71

    if-ne v2, v3, :cond_4

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_2

    :cond_4
    const/16 v3, 0x38

    if-ne v2, v3, :cond_5

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->parseLayoutDescription(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/i;

    goto :goto_2

    :cond_5
    const/16 v3, 0x22

    if-ne v2, v3, :cond_6

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    :try_start_1
    new-instance v3, Landroidx/constraintlayout/widget/q;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/q;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/q;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroidx/constraintlayout/widget/q;->g(ILandroid/content/Context;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/q;

    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    iput p0, p1, Lv/g;->F0:I

    const/16 p0, 0x200

    invoke-virtual {p1, p0}, Lv/g;->W(I)Z

    move-result p0

    sput-boolean p0, Lt/f;->p:Z

    return-void
.end method

.method private markHierarchyDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    return-void
.end method

.method private setChildrenConstraints()V
    .locals 16

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_1

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lv/f;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lv/f;->D()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-eqz v7, :cond_3

    move v2, v0

    :goto_2
    if-ge v2, v8, :cond_3

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v1, :cond_2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {v6, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Lv/f;

    move-result-object v3

    iput-object v4, v3, Lv/f;->k0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget v2, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    const/4 v3, 0x1

    if-eq v2, v1, :cond_c

    move v2, v0

    :goto_3
    if-ge v2, v8, :cond_c

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    iget v9, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    if-ne v5, v9, :cond_b

    instance-of v5, v4, Landroidx/constraintlayout/widget/s;

    if-eqz v5, :cond_b

    check-cast v4, Landroidx/constraintlayout/widget/s;

    iget-object v5, v4, Landroidx/constraintlayout/widget/s;->d:Landroidx/constraintlayout/widget/q;

    if-nez v5, :cond_4

    new-instance v5, Landroidx/constraintlayout/widget/q;

    invoke-direct {v5}, Landroidx/constraintlayout/widget/q;-><init>()V

    iput-object v5, v4, Landroidx/constraintlayout/widget/s;->d:Landroidx/constraintlayout/widget/q;

    :cond_4
    iget-object v5, v4, Landroidx/constraintlayout/widget/s;->d:Landroidx/constraintlayout/widget/q;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    iget-object v10, v5, Landroidx/constraintlayout/widget/q;->c:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    move v11, v0

    :goto_4
    if-ge v11, v9, :cond_a

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/r;

    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v14

    iget-boolean v15, v5, Landroidx/constraintlayout/widget/q;->b:Z

    if-eqz v15, :cond_6

    if-eq v14, v1, :cond_5

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v1, Landroidx/constraintlayout/widget/l;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/l;-><init>()V

    invoke-virtual {v10, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/l;

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    instance-of v15, v12, Landroidx/constraintlayout/widget/b;

    if-eqz v15, :cond_9

    check-cast v12, Landroidx/constraintlayout/widget/b;

    invoke-virtual {v1, v14, v13}, Landroidx/constraintlayout/widget/l;->c(ILandroidx/constraintlayout/widget/r;)V

    instance-of v15, v12, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v15, :cond_9

    iget-object v15, v1, Landroidx/constraintlayout/widget/l;->d:Landroidx/constraintlayout/widget/m;

    iput v3, v15, Landroidx/constraintlayout/widget/m;->h0:I

    check-cast v12, Landroidx/constraintlayout/widget/Barrier;

    iget v3, v12, Landroidx/constraintlayout/widget/Barrier;->k:I

    iput v3, v15, Landroidx/constraintlayout/widget/m;->f0:I

    iget-object v3, v12, Landroidx/constraintlayout/widget/b;->d:[I

    iget v0, v12, Landroidx/constraintlayout/widget/b;->e:I

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, v15, Landroidx/constraintlayout/widget/m;->i0:[I

    iget-object v0, v12, Landroidx/constraintlayout/widget/Barrier;->m:Lv/a;

    iget v0, v0, Lv/a;->w0:I

    iput v0, v15, Landroidx/constraintlayout/widget/m;->g0:I

    :cond_9
    invoke-virtual {v1, v14, v13}, Landroidx/constraintlayout/widget/l;->c(ILandroidx/constraintlayout/widget/r;)V

    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    iget-object v0, v4, Landroidx/constraintlayout/widget/s;->d:Landroidx/constraintlayout/widget/q;

    iput-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/q;

    :cond_b
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_c
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/q;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/q;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_d
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget-object v0, v0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    iget-object v2, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/b;

    invoke-virtual {v2}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v2, Landroidx/constraintlayout/widget/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/b;->j(Ljava/lang/String;)V

    :cond_e
    iget-object v3, v2, Landroidx/constraintlayout/widget/b;->g:Lv/l;

    if-nez v3, :cond_f

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    iput v4, v3, Lv/l;->t0:I

    iget-object v3, v3, Lv/l;->s0:[Lv/f;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    :goto_8
    iget v3, v2, Landroidx/constraintlayout/widget/b;->e:I

    if-ge v4, v3, :cond_14

    iget-object v3, v2, Landroidx/constraintlayout/widget/b;->d:[I

    aget v3, v3, v4

    invoke-virtual {v6, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_10

    iget-object v9, v2, Landroidx/constraintlayout/widget/b;->j:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Landroidx/constraintlayout/widget/b;->g(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_10

    iget-object v5, v2, Landroidx/constraintlayout/widget/b;->d:[I

    aput v9, v5, v4

    iget-object v5, v2, Landroidx/constraintlayout/widget/b;->j:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

    :cond_10
    if-eqz v5, :cond_13

    iget-object v3, v2, Landroidx/constraintlayout/widget/b;->g:Lv/l;

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lv/f;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v5, v3, :cond_13

    if-nez v5, :cond_11

    goto :goto_9

    :cond_11
    iget v9, v3, Lv/l;->t0:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iget-object v10, v3, Lv/l;->s0:[Lv/f;

    array-length v11, v10

    if-le v9, v11, :cond_12

    array-length v9, v10

    mul-int/lit8 v9, v9, 0x2

    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lv/f;

    iput-object v9, v3, Lv/l;->s0:[Lv/f;

    :cond_12
    iget-object v9, v3, Lv/l;->s0:[Lv/f;

    iget v10, v3, Lv/l;->t0:I

    aput-object v5, v9, v10

    const/4 v5, 0x1

    add-int/2addr v10, v5

    iput v10, v3, Lv/l;->t0:I

    :cond_13
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_14
    iget-object v2, v2, Landroidx/constraintlayout/widget/b;->g:Lv/l;

    invoke-interface {v2}, Lv/k;->a()V

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_15
    const/4 v4, 0x0

    :goto_b
    if-ge v4, v8, :cond_18

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/u;

    if-eqz v1, :cond_16

    check-cast v0, Landroidx/constraintlayout/widget/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/widget/u;->d:Landroid/view/View;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/d;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/d;->f0:Z

    iget-object v2, v0, Landroidx/constraintlayout/widget/u;->d:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_16
    const/4 v1, 0x0

    :cond_17
    const/4 v3, 0x1

    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_18
    const/4 v1, 0x0

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    iget-object v2, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    iget-object v3, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v4, v1

    :goto_d
    if-ge v4, v8, :cond_19

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lv/f;

    move-result-object v2

    iget-object v3, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_19
    move v9, v1

    :goto_e
    if-ge v9, v8, :cond_1c

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lv/f;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_f

    :cond_1a
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/d;

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget-object v1, v0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v3, Lv/f;->W:Lv/f;

    if-eqz v1, :cond_1b

    check-cast v1, Lv/o;

    iget-object v1, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lv/f;->D()V

    :cond_1b
    iput-object v0, v3, Lv/f;->W:Lv/f;

    iget-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Lv/f;Landroidx/constraintlayout/widget/d;Landroid/util/SparseArray;)V

    :goto_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_1c
    return-void
.end method

.method private setWidgetBaseline(Lv/f;Landroidx/constraintlayout/widget/d;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lv/f;

    if-eqz p3, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p4, p4, Landroidx/constraintlayout/widget/d;

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    iput-boolean p4, p2, Landroidx/constraintlayout/widget/d;->c0:Z

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p5, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/d;

    iput-boolean p4, p0, Landroidx/constraintlayout/widget/d;->c0:Z

    iget-object p0, p0, Landroidx/constraintlayout/widget/d;->q0:Lv/f;

    iput-boolean p4, p0, Lv/f;->F:Z

    :cond_0
    invoke-virtual {p1, v0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p3, p5}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p3

    iget p5, p2, Landroidx/constraintlayout/widget/d;->D:I

    iget p2, p2, Landroidx/constraintlayout/widget/d;->C:I

    invoke-virtual {p0, p3, p5, p2, p4}, Lv/d;->b(Lv/d;IIZ)Z

    iput-boolean p4, p1, Lv/f;->F:Z

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p0}, Lv/d;->j()V

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p0}, Lv/d;->j()V

    :cond_1
    return-void
.end method

.method private updateHierarchy()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setChildrenConstraints()V

    :cond_2
    return v1
.end method


# virtual methods
.method public addValueModifier(Landroidx/constraintlayout/widget/f;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mModifiers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mModifiers:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mModifiers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyConstraintsFromLayoutParams(ZLandroid/view/View;Lv/f;Landroidx/constraintlayout/widget/d;Landroid/util/SparseArray;)V
    .locals 21

    move-object/from16 v0, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/d;->a()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    iput v1, v6, Lv/f;->j0:I

    iget-boolean v1, v7, Landroidx/constraintlayout/widget/d;->f0:Z

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    iput-boolean v9, v6, Lv/f;->G:Z

    const/16 v1, 0x8

    iput v1, v6, Lv/f;->j0:I

    :cond_0
    iput-object v0, v6, Lv/f;->i0:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/constraintlayout/widget/b;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/constraintlayout/widget/b;

    move-object/from16 v10, p0

    iget-object v1, v10, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget-boolean v1, v1, Lv/g;->x0:Z

    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/widget/b;->i(Lv/f;Z)V

    goto :goto_0

    :cond_1
    move-object/from16 v10, p0

    :goto_0
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/d;->d0:Z

    const/4 v11, -0x1

    if-eqz v0, :cond_4

    move-object v0, v6

    check-cast v0, Lv/j;

    iget v1, v7, Landroidx/constraintlayout/widget/d;->n0:I

    iget v2, v7, Landroidx/constraintlayout/widget/d;->o0:I

    iget v3, v7, Landroidx/constraintlayout/widget/d;->p0:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_2

    if-lez v5, :cond_2c

    iput v3, v0, Lv/j;->s0:F

    iput v11, v0, Lv/j;->t0:I

    iput v11, v0, Lv/j;->u0:I

    goto/16 :goto_13

    :cond_2
    if-eq v1, v11, :cond_3

    if-le v1, v11, :cond_2c

    iput v4, v0, Lv/j;->s0:F

    iput v1, v0, Lv/j;->t0:I

    iput v11, v0, Lv/j;->u0:I

    goto/16 :goto_13

    :cond_3
    if-eq v2, v11, :cond_2c

    if-le v2, v11, :cond_2c

    iput v4, v0, Lv/j;->s0:F

    iput v11, v0, Lv/j;->t0:I

    iput v2, v0, Lv/j;->u0:I

    goto/16 :goto_13

    :cond_4
    iget v0, v7, Landroidx/constraintlayout/widget/d;->g0:I

    iget v1, v7, Landroidx/constraintlayout/widget/d;->h0:I

    iget v12, v7, Landroidx/constraintlayout/widget/d;->i0:I

    iget v13, v7, Landroidx/constraintlayout/widget/d;->j0:I

    iget v5, v7, Landroidx/constraintlayout/widget/d;->k0:I

    iget v14, v7, Landroidx/constraintlayout/widget/d;->l0:I

    iget v15, v7, Landroidx/constraintlayout/widget/d;->m0:F

    iget v2, v7, Landroidx/constraintlayout/widget/d;->p:I

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move/from16 v16, v5

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v2, v11, :cond_6

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lv/f;

    if-eqz v2, :cond_5

    iget v8, v7, Landroidx/constraintlayout/widget/d;->r:F

    iget v10, v7, Landroidx/constraintlayout/widget/d;->q:I

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    move-object v1, v12

    move-object v14, v3

    move-object v3, v12

    move-object v12, v4

    move v4, v10

    move-object v10, v5

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lv/f;->w(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    iput v8, v6, Lv/f;->E:F

    goto :goto_1

    :cond_5
    move-object v14, v3

    move-object v12, v4

    move-object v10, v5

    :goto_1
    move-object/from16 v18, v10

    move-object/from16 v17, v12

    move-object/from16 v19, v14

    goto/16 :goto_8

    :cond_6
    move-object/from16 v20, v4

    move-object v4, v3

    move-object v3, v5

    move-object/from16 v5, v20

    if-eq v0, v11, :cond_8

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lv/f;

    if-eqz v2, :cond_7

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p3

    move/from16 v17, v1

    move-object v1, v4

    move-object/from16 v18, v3

    move-object v3, v4

    move-object/from16 v19, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lv/f;->w(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto :goto_2

    :cond_7
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    goto :goto_2

    :cond_8
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    if-eq v1, v11, :cond_9

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lv/f;

    if-eqz v2, :cond_9

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v3, v17

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lv/f;->w(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    :cond_9
    :goto_2
    if-eq v12, v11, :cond_a

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lv/f;

    if-eqz v2, :cond_b

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object/from16 v3, v19

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lv/f;->w(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto :goto_3

    :cond_a
    if-eq v13, v11, :cond_b

    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lv/f;

    if-eqz v2, :cond_b

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object/from16 v3, v17

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lv/f;->w(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    :cond_b
    :goto_3
    iget v0, v7, Landroidx/constraintlayout/widget/d;->i:I

    if-eq v0, v11, :cond_c

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lv/f;

    if-eqz v2, :cond_d

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v7, Landroidx/constraintlayout/widget/d;->x:I

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v3, v18

    invoke-virtual/range {v0 .. v5}, Lv/f;->w(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto :goto_4

    :cond_c
    iget v0, v7, Landroidx/constraintlayout/widget/d;->j:I

    if-eq v0, v11, :cond_d

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lv/f;

    if-eqz v2, :cond_d

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v7, Landroidx/constraintlayout/widget/d;->x:I

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lv/f;->w(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    :cond_d
    :goto_4
    iget v0, v7, Landroidx/constraintlayout/widget/d;->k:I

    if-eq v0, v11, :cond_e

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lv/f;

    if-eqz v2, :cond_f

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v5, v7, Landroidx/constraintlayout/widget/d;->z:I

    move-object/from16 v0, p3

    move-object v1, v9

    move-object/from16 v3, v18

    invoke-virtual/range {v0 .. v5}, Lv/f;->w(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto :goto_5

    :cond_e
    iget v0, v7, Landroidx/constraintlayout/widget/d;->l:I

    if-eq v0, v11, :cond_f

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lv/f;

    if-eqz v2, :cond_f

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v5, v7, Landroidx/constraintlayout/widget/d;->z:I

    move-object/from16 v0, p3

    move-object v1, v9

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lv/f;->w(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    :cond_f
    :goto_5
    iget v4, v7, Landroidx/constraintlayout/widget/d;->m:I

    if-eq v4, v11, :cond_11

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Lv/f;Landroidx/constraintlayout/widget/d;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    :cond_10
    :goto_6
    const/4 v0, 0x0

    goto :goto_7

    :cond_11
    iget v4, v7, Landroidx/constraintlayout/widget/d;->n:I

    if-eq v4, v11, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Lv/f;Landroidx/constraintlayout/widget/d;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    goto :goto_6

    :cond_12
    iget v4, v7, Landroidx/constraintlayout/widget/d;->o:I

    if-eq v4, v11, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Lv/f;Landroidx/constraintlayout/widget/d;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    goto :goto_6

    :goto_7
    cmpl-float v1, v15, v0

    if-ltz v1, :cond_13

    iput v15, v6, Lv/f;->g0:F

    :cond_13
    iget v1, v7, Landroidx/constraintlayout/widget/d;->F:F

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_14

    iput v1, v6, Lv/f;->h0:F

    :cond_14
    :goto_8
    if-eqz p1, :cond_16

    iget v0, v7, Landroidx/constraintlayout/widget/d;->T:I

    if-ne v0, v11, :cond_15

    iget v1, v7, Landroidx/constraintlayout/widget/d;->U:I

    if-eq v1, v11, :cond_16

    :cond_15
    iget v1, v7, Landroidx/constraintlayout/widget/d;->U:I

    iput v0, v6, Lv/f;->b0:I

    iput v1, v6, Lv/f;->c0:I

    :cond_16
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/d;->a0:Z

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, -0x2

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    if-nez v0, :cond_19

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v11, :cond_18

    iget-boolean v0, v7, Landroidx/constraintlayout/widget/d;->W:Z

    if-eqz v0, :cond_17

    invoke-virtual {v6, v5}, Lv/f;->M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_9

    :cond_17
    invoke-virtual {v6, v1}, Lv/f;->M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :goto_9
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v0

    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v10, v0, Lv/d;->g:I

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v0

    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v10, v0, Lv/d;->g:I

    goto :goto_a

    :cond_18
    invoke-virtual {v6, v5}, Lv/f;->M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v6, v8}, Lv/f;->O(I)V

    goto :goto_a

    :cond_19
    invoke-virtual {v6, v4}, Lv/f;->M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v6, v0}, Lv/f;->O(I)V

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v3, :cond_1a

    invoke-virtual {v6, v2}, Lv/f;->M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_1a
    :goto_a
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/d;->b0:Z

    if-nez v0, :cond_1d

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v11, :cond_1c

    iget-boolean v0, v7, Landroidx/constraintlayout/widget/d;->X:Z

    if-eqz v0, :cond_1b

    invoke-virtual {v6, v5}, Lv/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_b

    :cond_1b
    invoke-virtual {v6, v1}, Lv/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :goto_b
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v0

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Lv/d;->g:I

    invoke-virtual {v6, v9}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v0

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, v0, Lv/d;->g:I

    goto :goto_c

    :cond_1c
    invoke-virtual {v6, v5}, Lv/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v6, v8}, Lv/f;->L(I)V

    goto :goto_c

    :cond_1d
    invoke-virtual {v6, v4}, Lv/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v6, v0}, Lv/f;->L(I)V

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v3, :cond_1e

    invoke-virtual {v6, v2}, Lv/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_1e
    :goto_c
    iget-object v0, v7, Landroidx/constraintlayout/widget/d;->G:Ljava/lang/String;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_10

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_22

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_22

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "W"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    move v11, v8

    :cond_20
    const/4 v3, 0x1

    goto :goto_d

    :cond_21
    const-string v4, "H"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    const/4 v11, 0x1

    :goto_d
    add-int/2addr v2, v3

    goto :goto_e

    :cond_22
    const/4 v3, 0x1

    move v2, v8

    :goto_e
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_24

    sub-int/2addr v1, v3

    if-ge v4, v1, :cond_24

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_25

    cmpl-float v3, v0, v2

    if-lez v3, :cond_25

    const/4 v2, 0x1

    if-ne v11, v2, :cond_23

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_f

    :cond_23
    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :cond_24
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_f

    :catch_0
    :cond_25
    const/4 v0, 0x0

    :goto_f
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_27

    iput v0, v6, Lv/f;->Z:F

    iput v11, v6, Lv/f;->a0:I

    goto :goto_11

    :cond_26
    :goto_10
    const/4 v1, 0x0

    iput v1, v6, Lv/f;->Z:F

    :cond_27
    :goto_11
    iget v0, v7, Landroidx/constraintlayout/widget/d;->H:F

    iget-object v1, v6, Lv/f;->n0:[F

    aput v0, v1, v8

    iget v0, v7, Landroidx/constraintlayout/widget/d;->I:F

    const/4 v2, 0x1

    aput v0, v1, v2

    iget v0, v7, Landroidx/constraintlayout/widget/d;->J:I

    iput v0, v6, Lv/f;->l0:I

    iget v0, v7, Landroidx/constraintlayout/widget/d;->K:I

    iput v0, v6, Lv/f;->m0:I

    iget v0, v7, Landroidx/constraintlayout/widget/d;->Z:I

    if-ltz v0, :cond_28

    const/4 v1, 0x3

    if-gt v0, v1, :cond_28

    iput v0, v6, Lv/f;->r:I

    :cond_28
    iget v0, v7, Landroidx/constraintlayout/widget/d;->L:I

    iget v1, v7, Landroidx/constraintlayout/widget/d;->N:I

    iget v2, v7, Landroidx/constraintlayout/widget/d;->P:I

    iget v3, v7, Landroidx/constraintlayout/widget/d;->R:F

    iput v0, v6, Lv/f;->s:I

    iput v1, v6, Lv/f;->v:I

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_29

    move v2, v8

    :cond_29
    iput v2, v6, Lv/f;->w:I

    iput v3, v6, Lv/f;->x:F

    const/4 v2, 0x0

    cmpl-float v4, v3, v2

    const/4 v2, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v4, :cond_2a

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2a

    if-nez v0, :cond_2a

    iput v2, v6, Lv/f;->s:I

    :cond_2a
    iget v0, v7, Landroidx/constraintlayout/widget/d;->M:I

    iget v3, v7, Landroidx/constraintlayout/widget/d;->O:I

    iget v4, v7, Landroidx/constraintlayout/widget/d;->Q:I

    iget v7, v7, Landroidx/constraintlayout/widget/d;->S:F

    iput v0, v6, Lv/f;->t:I

    iput v3, v6, Lv/f;->y:I

    if-ne v4, v1, :cond_2b

    goto :goto_12

    :cond_2b
    move v8, v4

    :goto_12
    iput v8, v6, Lv/f;->z:I

    iput v7, v6, Lv/f;->A:F

    const/4 v1, 0x0

    cmpl-float v1, v7, v1

    if-lez v1, :cond_2c

    cmpg-float v1, v7, v5

    if-gez v1, :cond_2c

    if-nez v0, :cond_2c

    iput v2, v6, Lv/f;->t:I

    :cond_2c
    :goto_13
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Landroidx/constraintlayout/widget/d;

    return p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float/2addr v7, v1

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float/2addr v8, v3

    float-to-int v8, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float/2addr v9, v1

    float-to-int v9, v9

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float/2addr v6, v3

    float-to-int v6, v6

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v7

    int-to-float v13, v8

    add-int/2addr v7, v9

    int-to-float v7, v7

    move-object/from16 v10, p1

    move v11, v14

    move v12, v13

    move v9, v13

    move v13, v7

    move/from16 v16, v14

    move v14, v9

    move-object/from16 v17, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v8, v6

    int-to-float v6, v8

    move v11, v7

    move v12, v9

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move/from16 v13, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v11, v16

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v8, -0xff0100

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v9

    move v13, v7

    move v14, v6

    move-object v8, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public dynamicUpdateConstraints(II)Z
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mModifiers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mModifiers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/f;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget-object v0, v0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/f;

    iget-object v2, v2, Lv/f;->i0:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/d;

    invoke-interface {p2}, Landroidx/constraintlayout/widget/f;->a()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public fillMetrics(Lt/g;)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget-object p0, p0, Lv/g;->y0:Lt/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public forceLayout()V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/d;

    move-result-object p0

    return-object p0
.end method

.method public generateDefaultLayoutParams()Landroidx/constraintlayout/widget/d;
    .locals 1

    .line 2
    new-instance p0, Landroidx/constraintlayout/widget/d;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/constraintlayout/widget/d;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3
    new-instance p0, Landroidx/constraintlayout/widget/d;

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/d;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d;
    .locals 1

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/d;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxHeight()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    return p0
.end method

.method public getMinHeight()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    return p0
.end method

.method public getMinWidth()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    return p0
.end method

.method public getOptimizationLevel()I
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget p0, p0, Lv/g;->F0:I

    return p0
.end method

.method public getSceneString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget-object v1, v1, Lv/f;->k:Ljava/lang/String;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iput-object v1, v3, Lv/f;->k:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    const-string v3, "parent"

    iput-object v3, v1, Lv/f;->k:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget-object v3, v1, Lv/f;->k0:Ljava/lang/String;

    const-string v4, " setDebugName "

    const-string v5, "ConstraintLayout"

    if-nez v3, :cond_2

    iget-object v3, v1, Lv/f;->k:Ljava/lang/String;

    iput-object v3, v1, Lv/f;->k0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget-object v3, v3, Lv/f;->k0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget-object v1, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/f;

    iget-object v6, v3, Lv/f;->i0:Ljava/lang/Object;

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v7, v3, Lv/f;->k:Ljava/lang/String;

    if-nez v7, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lv/f;->k:Ljava/lang/String;

    :cond_4
    iget-object v6, v3, Lv/f;->k0:Ljava/lang/String;

    if-nez v6, :cond_3

    iget-object v6, v3, Lv/f;->k:Ljava/lang/String;

    iput-object v6, v3, Lv/f;->k0:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lv/f;->k0:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    invoke-virtual {p0, v0}, Lv/g;->o(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final getViewWidget(Landroid/view/View;)Lv/f;
    .locals 1

    if-ne p1, p0, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/d;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/d;

    iget-object p0, p0, Landroidx/constraintlayout/widget/d;->q0:Lv/f;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p0, p0, Landroidx/constraintlayout/widget/d;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/d;

    iget-object p0, p0, Landroidx/constraintlayout/widget/d;->q0:Lv/f;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public isRtl()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p0

    if-ne v2, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public loadLayoutDescription(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Landroidx/constraintlayout/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1}, Landroidx/constraintlayout/widget/i;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/i;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/i;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/i;

    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_3

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/d;

    iget-object v1, v0, Landroidx/constraintlayout/widget/d;->q0:Lv/f;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/d;->d0:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/d;->e0:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/d;->f0:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lv/f;->s()I

    move-result v0

    invoke-virtual {v1}, Lv/f;->t()I

    move-result v2

    invoke-virtual {v1}, Lv/f;->r()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Lv/f;->l()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    instance-of v4, p5, Landroidx/constraintlayout/widget/u;

    if-eqz v4, :cond_2

    check-cast p5, Landroidx/constraintlayout/widget/u;

    iget-object p5, p5, Landroidx/constraintlayout/widget/u;->d:Landroid/view/View;

    if-eqz p5, :cond_2

    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/b;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/b;->m()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->dynamicUpdateConstraints(II)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v2

    iput-boolean v2, v0, Lv/g;->x0:Z

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->updateHierarchy()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget-object v1, v0, Lv/g;->t0:Lw/c;

    invoke-virtual {v1, v0}, Lw/c;->c(Lv/g;)V

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget-object v0, v0, Lv/g;->y0:Lt/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Lv/g;III)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    invoke-virtual {v0}, Lv/f;->r()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    invoke-virtual {v0}, Lv/f;->l()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget-boolean v6, v0, Lv/g;->G0:Z

    iget-boolean v7, v0, Lv/g;->H0:Z

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lv/f;

    move-result-object v0

    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v0, v0, Lv/j;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/d;

    new-instance v1, Lv/j;

    invoke-direct {v1}, Lv/j;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/d;->q0:Lv/f;

    iput-boolean v2, v0, Landroidx/constraintlayout/widget/d;->d0:Z

    iget v0, v0, Landroidx/constraintlayout/widget/d;->V:I

    invoke-virtual {v1, v0}, Lv/j;->S(I)V

    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/b;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/b;->n()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/d;

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/d;->e0:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lv/f;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iget-object v1, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lv/f;->D()V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public parseLayoutDescription(I)V
    .locals 2

    new-instance v0, Landroidx/constraintlayout/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/widget/i;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/i;

    return-void
.end method

.method public removeValueModifier(Landroidx/constraintlayout/widget/f;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mModifiers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestLayout()V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public resolveMeasuredDimension(IIIIZZ)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    iget v1, v0, Landroidx/constraintlayout/widget/e;->e:I

    iget v0, v0, Landroidx/constraintlayout/widget/e;->d:I

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {p4, p2, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_0

    or-int/2addr p1, p3

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr p2, p3

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    return-void
.end method

.method public resolveSystem(Lv/g;III)V
    .locals 24

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    const/4 v10, 0x0

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v3, v11, v2

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v4

    move-object/from16 v5, p0

    iget-object v12, v5, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    iput v11, v12, Landroidx/constraintlayout/widget/e;->b:I

    iput v2, v12, Landroidx/constraintlayout/widget/e;->c:I

    iput v4, v12, Landroidx/constraintlayout/widget/e;->d:I

    iput v3, v12, Landroidx/constraintlayout/widget/e;->e:I

    move/from16 v2, p3

    iput v2, v12, Landroidx/constraintlayout/widget/e;->f:I

    move/from16 v2, p4

    iput v2, v12, Landroidx/constraintlayout/widget/e;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-gtz v2, :cond_1

    if-lez v12, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v12, v2

    :goto_2
    sub-int v13, v0, v4

    sub-int v14, v1, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v13

    move v4, v9

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelfDimensionBehaviour(Lv/g;IIII)V

    iput v12, v6, Lv/g;->z0:I

    iput v11, v6, Lv/g;->A0:I

    iget-object v0, v6, Lv/g;->t0:Lw/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v6, Lv/g;->w0:Landroidx/constraintlayout/widget/e;

    iget-object v2, v6, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lv/f;->r()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lv/f;->l()I

    move-result v4

    const/16 v5, 0x80

    invoke-static {v7, v5}, Lv/m;->b(II)Z

    move-result v5

    const/16 v11, 0x40

    if-nez v5, :cond_4

    invoke-static {v7, v11}, Lv/m;->b(II)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move v7, v10

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v7, 0x1

    :goto_4
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v16, 0x0

    if-eqz v7, :cond_d

    move v11, v10

    :goto_5
    if-ge v11, v2, :cond_d

    iget-object v12, v6, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lv/f;

    move/from16 p2, v7

    iget-object v7, v12, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 p4, v1

    aget-object v1, v7, v10

    if-ne v1, v15, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v10

    :goto_6
    const/16 v17, 0x1

    aget-object v7, v7, v17

    if-ne v7, v15, :cond_6

    const/4 v7, 0x1

    goto :goto_7

    :cond_6
    move v7, v10

    :goto_7
    if-eqz v1, :cond_7

    if-eqz v7, :cond_7

    iget v1, v12, Lv/f;->Z:F

    cmpl-float v1, v1, v16

    if-lez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    move v1, v10

    :goto_8
    invoke-virtual {v12}, Lv/f;->y()Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v1, :cond_8

    goto :goto_9

    :cond_8
    invoke-virtual {v12}, Lv/f;->z()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    instance-of v1, v12, Lv/n;

    if-eqz v1, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {v12}, Lv/f;->y()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v12}, Lv/f;->z()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_9

    :cond_b
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, p2

    move-object/from16 v1, p4

    goto :goto_5

    :cond_c
    :goto_9
    move v7, v10

    goto :goto_a

    :cond_d
    move-object/from16 p4, v1

    move/from16 p2, v7

    move/from16 v7, p2

    :goto_a
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v8, v1, :cond_e

    if-eq v9, v1, :cond_f

    :cond_e
    if-eqz v5, :cond_10

    :cond_f
    const/4 v11, 0x1

    goto :goto_b

    :cond_10
    move v11, v10

    :goto_b
    and-int/2addr v7, v11

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v7, :cond_30

    iget-object v1, v6, Lv/f;->D:[I

    move/from16 v18, v7

    aget v7, v1, v10

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v13, 0x1

    aget v1, v1, v13

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v14, v6, Lv/g;->u0:Lw/g;

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v10, :cond_12

    invoke-virtual/range {p1 .. p1}, Lv/f;->r()I

    move-result v10

    if-eq v10, v7, :cond_11

    invoke-virtual {v6, v7}, Lv/f;->O(I)V

    iput-boolean v13, v14, Lw/g;->b:Z

    :cond_11
    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_c

    :cond_12
    move v7, v10

    :goto_c
    if-ne v9, v7, :cond_13

    invoke-virtual/range {p1 .. p1}, Lv/f;->l()I

    move-result v10

    if-eq v10, v1, :cond_13

    invoke-virtual {v6, v1}, Lv/f;->L(I)V

    iput-boolean v13, v14, Lw/g;->b:Z

    :cond_13
    if-ne v8, v7, :cond_29

    if-ne v9, v7, :cond_29

    and-int/lit8 v1, v5, 0x1

    iget-boolean v5, v14, Lw/g;->b:Z

    iget-object v7, v14, Lw/g;->a:Lv/g;

    if-nez v5, :cond_15

    iget-boolean v5, v14, Lw/g;->c:Z

    if-eqz v5, :cond_14

    goto :goto_d

    :cond_14
    const/4 v5, 0x0

    goto :goto_f

    :cond_15
    :goto_d
    iget-object v5, v7, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv/f;

    invoke-virtual {v10}, Lv/f;->i()V

    const/4 v13, 0x0

    iput-boolean v13, v10, Lv/f;->a:Z

    iget-object v13, v10, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/analyzer/d;->n()V

    iget-object v10, v10, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/e;->m()V

    goto :goto_e

    :cond_16
    invoke-virtual {v7}, Lv/f;->i()V

    const/4 v5, 0x0

    iput-boolean v5, v7, Lv/f;->a:Z

    iget-object v10, v7, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/d;->n()V

    iget-object v10, v7, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/e;->m()V

    iput-boolean v5, v14, Lw/g;->c:Z

    :goto_f
    iget-object v10, v14, Lw/g;->d:Lv/g;

    invoke-virtual {v14, v10}, Lw/g;->b(Lv/g;)V

    iput v5, v7, Lv/f;->b0:I

    iput v5, v7, Lv/f;->c0:I

    invoke-virtual {v7, v5}, Lv/f;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Lv/f;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    iget-boolean v5, v14, Lw/g;->b:Z

    if-eqz v5, :cond_17

    invoke-virtual {v14}, Lw/g;->c()V

    :cond_17
    invoke-virtual {v7}, Lv/f;->s()I

    move-result v5

    move/from16 v19, v3

    invoke-virtual {v7}, Lv/f;->t()I

    move-result v3

    move/from16 v20, v4

    iget-object v4, v7, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    iget-object v4, v7, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    invoke-virtual {v14}, Lw/g;->g()V

    iget-object v4, v14, Lw/g;->e:Ljava/util/ArrayList;

    if-eq v10, v11, :cond_19

    if-ne v13, v11, :cond_18

    goto :goto_10

    :cond_18
    move-object/from16 v21, v0

    move-object/from16 v22, v15

    goto :goto_12

    :cond_19
    :goto_10
    if-eqz v1, :cond_1b

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/core/widgets/analyzer/f;

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/analyzer/f;->k()Z

    move-result v22

    if-nez v22, :cond_1a

    const/4 v1, 0x0

    :cond_1b
    if-eqz v1, :cond_1c

    if-ne v10, v11, :cond_1c

    invoke-virtual {v7, v12}, Lv/f;->M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    move-object/from16 v21, v0

    move-object/from16 v22, v15

    const/4 v0, 0x0

    invoke-virtual {v14, v7, v0}, Lw/g;->d(Lv/g;I)I

    move-result v15

    invoke-virtual {v7, v15}, Lv/f;->O(I)V

    iget-object v0, v7, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v7}, Lv/f;->r()I

    move-result v15

    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    goto :goto_11

    :cond_1c
    move-object/from16 v21, v0

    move-object/from16 v22, v15

    :goto_11
    if-eqz v1, :cond_1d

    if-ne v13, v11, :cond_1d

    invoke-virtual {v7, v12}, Lv/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v0, 0x1

    invoke-virtual {v14, v7, v0}, Lw/g;->d(Lv/g;I)I

    move-result v1

    invoke-virtual {v7, v1}, Lv/f;->L(I)V

    iget-object v0, v7, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v7}, Lv/f;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    :cond_1d
    :goto_12
    iget-object v0, v7, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v15, v0, v1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v15, v12, :cond_1f

    if-ne v15, v1, :cond_1e

    goto :goto_13

    :cond_1e
    move-object/from16 v23, v11

    const/4 v0, 0x0

    goto :goto_14

    :cond_1f
    :goto_13
    invoke-virtual {v7}, Lv/f;->r()I

    move-result v15

    add-int/2addr v15, v5

    move-object/from16 v23, v11

    iget-object v11, v7, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v11, v15}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    iget-object v11, v7, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    sub-int/2addr v15, v5

    invoke-virtual {v11, v15}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    invoke-virtual {v14}, Lw/g;->g()V

    const/4 v5, 0x1

    aget-object v0, v0, v5

    if-eq v0, v12, :cond_20

    if-ne v0, v1, :cond_21

    :cond_20
    invoke-virtual {v7}, Lv/f;->l()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, v7, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    iget-object v1, v7, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    :cond_21
    invoke-virtual {v14}, Lw/g;->g()V

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/f;

    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    if-ne v5, v7, :cond_22

    iget-boolean v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    if-nez v5, :cond_22

    goto :goto_15

    :cond_22
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->e()V

    goto :goto_15

    :cond_23
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/f;

    if-nez v0, :cond_25

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    if-ne v4, v7, :cond_25

    goto :goto_16

    :cond_25
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v4, :cond_26

    goto :goto_17

    :cond_26
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v4, :cond_27

    instance-of v4, v3, Lw/j;

    if-nez v4, :cond_27

    goto :goto_17

    :cond_27
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v4, :cond_24

    instance-of v4, v3, Lw/d;

    if-nez v4, :cond_24

    instance-of v3, v3, Lw/j;

    if-nez v3, :cond_24

    :goto_17
    const/4 v0, 0x0

    goto :goto_18

    :cond_28
    const/4 v0, 0x1

    :goto_18
    invoke-virtual {v7, v10}, Lv/f;->M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v7, v13}, Lv/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    move v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v3, 0x2

    goto/16 :goto_1c

    :cond_29
    move-object/from16 v21, v0

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v23, v11

    move-object/from16 v22, v15

    iget-boolean v0, v14, Lw/g;->b:Z

    iget-object v1, v14, Lw/g;->a:Lv/g;

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/f;

    invoke-virtual {v3}, Lv/f;->i()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lv/f;->a:Z

    iget-object v7, v3, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iput-boolean v4, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iput-boolean v4, v7, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/analyzer/d;->n()V

    iget-object v3, v3, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iput-boolean v4, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/e;->m()V

    goto :goto_19

    :cond_2a
    const/4 v4, 0x0

    invoke-virtual {v1}, Lv/f;->i()V

    iput-boolean v4, v1, Lv/f;->a:Z

    iget-object v0, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iput-boolean v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/d;->n()V

    iget-object v0, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iput-boolean v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/e;->m()V

    invoke-virtual {v14}, Lw/g;->c()V

    goto :goto_1a

    :cond_2b
    const/4 v4, 0x0

    :goto_1a
    iget-object v0, v14, Lw/g;->d:Lv/g;

    invoke-virtual {v14, v0}, Lw/g;->b(Lv/g;)V

    iput v4, v1, Lv/f;->b0:I

    iput v4, v1, Lv/f;->c0:I

    iget-object v0, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    iget-object v0, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v8, v0, :cond_2c

    invoke-virtual {v6, v4, v5}, Lv/g;->U(IZ)Z

    move-result v1

    const/4 v3, 0x1

    and-int/2addr v1, v3

    move v4, v3

    goto :goto_1b

    :cond_2c
    const/4 v3, 0x1

    move v1, v3

    const/4 v4, 0x0

    :goto_1b
    if-ne v9, v0, :cond_2d

    invoke-virtual {v6, v3, v5}, Lv/g;->U(IZ)Z

    move-result v5

    and-int/2addr v1, v5

    add-int/lit8 v3, v4, 0x1

    goto :goto_1c

    :cond_2d
    move v3, v4

    :goto_1c
    if-eqz v1, :cond_31

    if-ne v8, v0, :cond_2e

    const/4 v4, 0x1

    goto :goto_1d

    :cond_2e
    const/4 v4, 0x0

    :goto_1d
    if-ne v9, v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_1e

    :cond_2f
    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {v6, v4, v0}, Lv/g;->P(ZZ)V

    goto :goto_1f

    :cond_30
    move-object/from16 v21, v0

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v18, v7

    move-object/from16 v23, v11

    move-object/from16 v22, v15

    const/4 v1, 0x0

    const/4 v3, 0x0

    :cond_31
    :goto_1f
    if-eqz v1, :cond_32

    const/4 v0, 0x2

    if-eq v3, v0, :cond_5d

    :cond_32
    iget v0, v6, Lv/g;->F0:I

    const/16 v1, 0x8

    if-lez v2, :cond_43

    iget-object v3, v6, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x40

    invoke-virtual {v6, v4}, Lv/g;->W(I)Z

    move-result v4

    iget-object v5, v6, Lv/g;->w0:Landroidx/constraintlayout/widget/e;

    const/4 v7, 0x0

    :goto_20
    if-ge v7, v3, :cond_3d

    iget-object v8, v6, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv/f;

    instance-of v9, v8, Lv/j;

    if-eqz v9, :cond_33

    goto :goto_21

    :cond_33
    instance-of v9, v8, Lv/a;

    if-eqz v9, :cond_34

    goto :goto_21

    :cond_34
    iget-boolean v9, v8, Lv/f;->H:Z

    if-eqz v9, :cond_35

    goto :goto_21

    :cond_35
    if-eqz v4, :cond_36

    iget-object v9, v8, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    if-eqz v9, :cond_36

    iget-object v10, v8, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-eqz v10, :cond_36

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v9, :cond_36

    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v9, :cond_36

    :goto_21
    move-object/from16 v10, v21

    move-object/from16 v13, v22

    goto :goto_23

    :cond_36
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lv/f;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lv/f;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    move-object/from16 v13, v22

    if-ne v10, v13, :cond_37

    iget v14, v8, Lv/f;->s:I

    if-eq v14, v9, :cond_37

    if-ne v11, v13, :cond_37

    iget v14, v8, Lv/f;->t:I

    if-eq v14, v9, :cond_37

    move v14, v9

    goto :goto_22

    :cond_37
    const/4 v14, 0x0

    :goto_22
    if-nez v14, :cond_3b

    invoke-virtual {v6, v9}, Lv/g;->W(I)Z

    move-result v15

    if-eqz v15, :cond_3b

    instance-of v9, v8, Lv/n;

    if-nez v9, :cond_3b

    if-ne v10, v13, :cond_38

    iget v9, v8, Lv/f;->s:I

    if-nez v9, :cond_38

    if-eq v11, v13, :cond_38

    invoke-virtual {v8}, Lv/f;->y()Z

    move-result v9

    if-nez v9, :cond_38

    const/4 v14, 0x1

    :cond_38
    if-ne v11, v13, :cond_39

    iget v9, v8, Lv/f;->t:I

    if-nez v9, :cond_39

    if-eq v10, v13, :cond_39

    invoke-virtual {v8}, Lv/f;->y()Z

    move-result v9

    if-nez v9, :cond_39

    const/4 v14, 0x1

    :cond_39
    if-eq v10, v13, :cond_3a

    if-ne v11, v13, :cond_3b

    :cond_3a
    iget v9, v8, Lv/f;->Z:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_3b

    const/4 v14, 0x1

    :cond_3b
    if-eqz v14, :cond_3c

    move-object/from16 v10, v21

    goto :goto_23

    :cond_3c
    move-object/from16 v10, v21

    const/4 v9, 0x0

    invoke-virtual {v10, v9, v8, v5}, Lw/c;->a(ILv/f;Landroidx/constraintlayout/widget/e;)Z

    :goto_23
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v21, v10

    move-object/from16 v22, v13

    goto/16 :goto_20

    :cond_3d
    move-object/from16 v10, v21

    iget-object v3, v5, Landroidx/constraintlayout/widget/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v13, 0x0

    :goto_24
    if-ge v13, v4, :cond_42

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v7, v5, Landroidx/constraintlayout/widget/u;

    if-eqz v7, :cond_41

    check-cast v5, Landroidx/constraintlayout/widget/u;

    iget-object v7, v5, Landroidx/constraintlayout/widget/u;->d:Landroid/view/View;

    if-nez v7, :cond_3e

    goto :goto_25

    :cond_3e
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/d;

    iget-object v5, v5, Landroidx/constraintlayout/widget/u;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/d;

    iget-object v8, v5, Landroidx/constraintlayout/widget/d;->q0:Lv/f;

    const/4 v9, 0x0

    iput v9, v8, Lv/f;->j0:I

    iget-object v11, v7, Landroidx/constraintlayout/widget/d;->q0:Lv/f;

    iget-object v14, v11, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v14, v14, v9

    if-eq v14, v12, :cond_3f

    invoke-virtual {v8}, Lv/f;->r()I

    move-result v8

    invoke-virtual {v11, v8}, Lv/f;->O(I)V

    :cond_3f
    iget-object v7, v7, Landroidx/constraintlayout/widget/d;->q0:Lv/f;

    iget-object v8, v7, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    if-eq v8, v12, :cond_40

    iget-object v8, v5, Landroidx/constraintlayout/widget/d;->q0:Lv/f;

    invoke-virtual {v8}, Lv/f;->l()I

    move-result v8

    invoke-virtual {v7, v8}, Lv/f;->L(I)V

    :cond_40
    iget-object v5, v5, Landroidx/constraintlayout/widget/d;->q0:Lv/f;

    iput v1, v5, Lv/f;->j0:I

    :cond_41
    :goto_25
    add-int/lit8 v13, v13, 0x1

    goto :goto_24

    :cond_42
    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_44

    const/4 v13, 0x0

    :goto_26
    if-ge v13, v4, :cond_44

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v13, v13, 0x1

    goto :goto_26

    :cond_43
    move-object/from16 v10, v21

    :cond_44
    invoke-virtual {v10, v6}, Lw/c;->c(Lv/g;)V

    iget-object v3, v10, Lw/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v2, :cond_45

    move/from16 v2, v19

    move/from16 v5, v20

    const/4 v13, 0x0

    invoke-virtual {v10, v6, v13, v2, v5}, Lw/c;->b(Lv/g;III)V

    goto :goto_27

    :cond_45
    move/from16 v2, v19

    move/from16 v5, v20

    const/4 v13, 0x0

    :goto_27
    if-lez v4, :cond_5c

    iget-object v7, v6, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v7, v13

    move-object/from16 v9, v23

    if-ne v8, v9, :cond_46

    const/4 v8, 0x1

    goto :goto_28

    :cond_46
    move v8, v13

    :goto_28
    const/4 v11, 0x1

    aget-object v7, v7, v11

    if-ne v7, v9, :cond_47

    const/4 v7, 0x1

    goto :goto_29

    :cond_47
    move v7, v13

    :goto_29
    invoke-virtual/range {p1 .. p1}, Lv/f;->r()I

    move-result v9

    iget-object v11, v10, Lw/c;->c:Lv/g;

    iget v12, v11, Lv/f;->e0:I

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lv/f;->l()I

    move-result v12

    iget v11, v11, Lv/f;->f0:I

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v12, v13

    move v14, v12

    :goto_2a
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ge v12, v4, :cond_4d

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lv/f;

    move/from16 v16, v0

    instance-of v0, v1, Lv/n;

    if-nez v0, :cond_48

    move/from16 v19, v2

    move/from16 v20, v5

    move-object/from16 v5, p4

    goto/16 :goto_2c

    :cond_48
    invoke-virtual {v1}, Lv/f;->r()I

    move-result v0

    move/from16 v19, v2

    invoke-virtual {v1}, Lv/f;->l()I

    move-result v2

    move/from16 v20, v5

    const/4 v6, 0x1

    move-object/from16 v5, p4

    invoke-virtual {v10, v6, v1, v5}, Lw/c;->a(ILv/f;Landroidx/constraintlayout/widget/e;)Z

    move-result v21

    or-int v6, v14, v21

    invoke-virtual {v1}, Lv/f;->r()I

    move-result v14

    move/from16 p2, v6

    invoke-virtual {v1}, Lv/f;->l()I

    move-result v6

    if-eq v14, v0, :cond_4a

    invoke-virtual {v1, v14}, Lv/f;->O(I)V

    if-eqz v8, :cond_49

    invoke-virtual {v1}, Lv/f;->s()I

    move-result v0

    iget v14, v1, Lv/f;->X:I

    add-int/2addr v0, v14

    if-le v0, v9, :cond_49

    invoke-virtual {v1}, Lv/f;->s()I

    move-result v0

    iget v14, v1, Lv/f;->X:I

    add-int/2addr v0, v14

    invoke-virtual {v1, v13}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v13

    invoke-virtual {v13}, Lv/d;->e()I

    move-result v13

    add-int/2addr v13, v0

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_49
    const/4 v0, 0x1

    goto :goto_2b

    :cond_4a
    move/from16 v0, p2

    :goto_2b
    if-eq v6, v2, :cond_4c

    invoke-virtual {v1, v6}, Lv/f;->L(I)V

    if-eqz v7, :cond_4b

    invoke-virtual {v1}, Lv/f;->t()I

    move-result v0

    iget v2, v1, Lv/f;->Y:I

    add-int/2addr v0, v2

    if-le v0, v11, :cond_4b

    invoke-virtual {v1}, Lv/f;->t()I

    move-result v0

    iget v2, v1, Lv/f;->Y:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v15}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v2

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v11, v0

    :cond_4b
    const/4 v0, 0x1

    :cond_4c
    check-cast v1, Lv/n;

    iget-boolean v1, v1, Lv/n;->A0:Z

    or-int/2addr v0, v1

    move v14, v0

    :goto_2c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p1

    move-object/from16 p4, v5

    move/from16 v0, v16

    move/from16 v2, v19

    move/from16 v5, v20

    const/16 v1, 0x8

    const/4 v13, 0x0

    goto/16 :goto_2a

    :cond_4d
    move/from16 v16, v0

    move/from16 v19, v2

    move/from16 v20, v5

    move-object/from16 v5, p4

    const/4 v0, 0x0

    const/4 v1, 0x2

    :goto_2d
    if-ge v0, v1, :cond_5b

    move/from16 v17, v14

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v4, :cond_5a

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/f;

    instance-of v12, v6, Lv/k;

    if-eqz v12, :cond_4e

    instance-of v12, v6, Lv/n;

    if-eqz v12, :cond_4f

    :cond_4e
    instance-of v12, v6, Lv/j;

    if-eqz v12, :cond_50

    :cond_4f
    const/16 v14, 0x8

    goto :goto_2f

    :cond_50
    iget v12, v6, Lv/f;->j0:I

    const/16 v14, 0x8

    if-ne v12, v14, :cond_51

    goto :goto_2f

    :cond_51
    if-eqz v18, :cond_52

    iget-object v12, v6, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v12, :cond_52

    iget-object v12, v6, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v12, :cond_52

    goto :goto_2f

    :cond_52
    instance-of v12, v6, Lv/n;

    if-eqz v12, :cond_53

    :goto_2f
    move-object/from16 v22, v3

    move/from16 p2, v4

    goto/16 :goto_30

    :cond_53
    invoke-virtual {v6}, Lv/f;->r()I

    move-result v12

    invoke-virtual {v6}, Lv/f;->l()I

    move-result v1

    iget v14, v6, Lv/f;->d0:I

    move-object/from16 v22, v3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_54

    const/4 v3, 0x2

    :cond_54
    invoke-virtual {v10, v3, v6, v5}, Lw/c;->a(ILv/f;Landroidx/constraintlayout/widget/e;)Z

    move-result v3

    or-int v17, v17, v3

    invoke-virtual {v6}, Lv/f;->r()I

    move-result v3

    move/from16 p2, v4

    invoke-virtual {v6}, Lv/f;->l()I

    move-result v4

    if-eq v3, v12, :cond_56

    invoke-virtual {v6, v3}, Lv/f;->O(I)V

    if-eqz v8, :cond_55

    invoke-virtual {v6}, Lv/f;->s()I

    move-result v3

    iget v12, v6, Lv/f;->X:I

    add-int/2addr v3, v12

    if-le v3, v9, :cond_55

    invoke-virtual {v6}, Lv/f;->s()I

    move-result v3

    iget v12, v6, Lv/f;->X:I

    add-int/2addr v3, v12

    invoke-virtual {v6, v13}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v12

    invoke-virtual {v12}, Lv/d;->e()I

    move-result v12

    add-int/2addr v12, v3

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_55
    const/16 v17, 0x1

    :cond_56
    if-eq v4, v1, :cond_58

    invoke-virtual {v6, v4}, Lv/f;->L(I)V

    if-eqz v7, :cond_57

    invoke-virtual {v6}, Lv/f;->t()I

    move-result v1

    iget v3, v6, Lv/f;->Y:I

    add-int/2addr v1, v3

    if-le v1, v11, :cond_57

    invoke-virtual {v6}, Lv/f;->t()I

    move-result v1

    iget v3, v6, Lv/f;->Y:I

    add-int/2addr v1, v3

    invoke-virtual {v6, v15}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v3

    invoke-virtual {v3}, Lv/d;->e()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v11, v1

    :cond_57
    const/16 v17, 0x1

    :cond_58
    iget-boolean v1, v6, Lv/f;->F:Z

    if-eqz v1, :cond_59

    iget v1, v6, Lv/f;->d0:I

    if-eq v14, v1, :cond_59

    const/16 v17, 0x1

    :cond_59
    :goto_30
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p2

    move-object/from16 v3, v22

    const/4 v1, 0x2

    goto/16 :goto_2e

    :cond_5a
    move-object/from16 v22, v3

    move/from16 p2, v4

    if-eqz v17, :cond_5b

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v1, v0, v2, v3}, Lw/c;->b(Lv/g;III)V

    move/from16 v4, p2

    move-object/from16 v3, v22

    const/4 v1, 0x2

    const/4 v14, 0x0

    goto/16 :goto_2d

    :cond_5b
    move-object/from16 v1, p1

    goto :goto_31

    :cond_5c
    move/from16 v16, v0

    move-object v1, v6

    :goto_31
    move/from16 v0, v16

    iput v0, v1, Lv/g;->F0:I

    const/16 v0, 0x200

    invoke-virtual {v1, v0}, Lv/g;->W(I)Z

    move-result v0

    sput-boolean v0, Lt/f;->p:Z

    :cond_5d
    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/q;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/q;

    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/t;)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lv/g;

    iput p1, p0, Lv/g;->F0:I

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Lv/g;->W(I)Z

    move-result p0

    sput-boolean p0, Lt/f;->p:Z

    return-void
.end method

.method public setSelfDimensionBehaviour(Lv/g;IIII)V
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    iget v1, v0, Landroidx/constraintlayout/widget/e;->e:I

    iget v0, v0, Landroidx/constraintlayout/widget/e;->d:I

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    if-eq p2, v6, :cond_3

    if-eqz p2, :cond_1

    if-eq p2, v5, :cond_0

    move-object p2, v2

    goto :goto_0

    :cond_0
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    move-object p3, v2

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_1

    :cond_2
    move-object p2, v4

    :goto_0
    move-object p3, p2

    move p2, v7

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_4
    :goto_1
    move p2, p3

    move-object p3, v4

    :goto_2
    if-eq p4, v6, :cond_8

    if-eqz p4, :cond_6

    if-eq p4, v5, :cond_5

    goto :goto_3

    :cond_5
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr p4, v1

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_5

    :cond_6
    if-nez v3, :cond_7

    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-static {v7, p4}, Ljava/lang/Math;->max(II)I

    move-result p5

    goto :goto_4

    :cond_7
    move-object v2, v4

    :goto_3
    move p4, v7

    goto :goto_5

    :cond_8
    if-nez v3, :cond_9

    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-static {v7, p4}, Ljava/lang/Math;->max(II)I

    move-result p5

    :cond_9
    :goto_4
    move p4, p5

    move-object v2, v4

    :goto_5
    invoke-virtual {p1}, Lv/f;->r()I

    move-result p5

    const/4 v3, 0x1

    if-ne p2, p5, :cond_a

    invoke-virtual {p1}, Lv/f;->l()I

    move-result p5

    if-eq p4, p5, :cond_b

    :cond_a
    iget-object p5, p1, Lv/g;->u0:Lw/g;

    iput-boolean v3, p5, Lw/g;->c:Z

    :cond_b
    iput v7, p1, Lv/f;->b0:I

    iput v7, p1, Lv/f;->c0:I

    iget p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr p5, v0

    iget-object v4, p1, Lv/f;->D:[I

    aput p5, v4, v7

    iget p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr p5, v1

    aput p5, v4, v3

    iput v7, p1, Lv/f;->e0:I

    iput v7, p1, Lv/f;->f0:I

    invoke-virtual {p1, p3}, Lv/f;->M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {p1, p2}, Lv/f;->O(I)V

    invoke-virtual {p1, v2}, Lv/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {p1, p4}, Lv/f;->L(I)V

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    sub-int/2addr p2, v0

    if-gez p2, :cond_c

    iput v7, p1, Lv/f;->e0:I

    goto :goto_6

    :cond_c
    iput p2, p1, Lv/f;->e0:I

    :goto_6
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    sub-int/2addr p0, v1

    if-gez p0, :cond_d

    iput v7, p1, Lv/f;->f0:I

    goto :goto_7

    :cond_d
    iput p0, p1, Lv/f;->f0:I

    :goto_7
    return-void
.end method

.method public setState(III)V
    .locals 6

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/i;

    if-eqz p0, :cond_e

    int-to-float p2, p2

    int-to-float p3, p3

    iget v0, p0, Landroidx/constraintlayout/widget/i;->b:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/i;->d:Landroid/util/SparseArray;

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v4, p0, Landroidx/constraintlayout/widget/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-ne v0, p1, :cond_8

    if-ne p1, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/g;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/g;

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/widget/i;->c:I

    if-eq v0, v3, :cond_1

    iget-object v1, p1, Landroidx/constraintlayout/widget/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/h;

    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/h;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_9

    :cond_1
    :goto_1
    iget-object v0, p1, Landroidx/constraintlayout/widget/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/h;

    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/h;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_2
    iget p2, p0, Landroidx/constraintlayout/widget/i;->c:I

    if-ne p2, v2, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-object p1, p1, Landroidx/constraintlayout/widget/g;->b:Ljava/util/ArrayList;

    if-ne v2, v3, :cond_5

    const/4 p2, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/h;

    iget-object p2, p2, Landroidx/constraintlayout/widget/h;->f:Landroidx/constraintlayout/widget/q;

    :goto_3
    if-ne v2, v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/h;

    iget p1, p1, Landroidx/constraintlayout/widget/h;->e:I

    :goto_4
    if-nez p2, :cond_7

    goto/16 :goto_9

    :cond_7
    iput v2, p0, Landroidx/constraintlayout/widget/i;->c:I

    invoke-virtual {p2, v4}, Landroidx/constraintlayout/widget/q;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_9

    :cond_8
    iput p1, p0, Landroidx/constraintlayout/widget/i;->b:I

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/g;

    :goto_5
    iget-object v1, v0, Landroidx/constraintlayout/widget/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_a

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/h;

    invoke-virtual {v1, p2, p3}, Landroidx/constraintlayout/widget/h;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    move v2, v3

    :goto_6
    iget-object v1, v0, Landroidx/constraintlayout/widget/g;->b:Ljava/util/ArrayList;

    if-ne v2, v3, :cond_b

    iget-object v0, v0, Landroidx/constraintlayout/widget/g;->d:Landroidx/constraintlayout/widget/q;

    goto :goto_7

    :cond_b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/h;

    iget-object v0, v0, Landroidx/constraintlayout/widget/h;->f:Landroidx/constraintlayout/widget/q;

    :goto_7
    if-ne v2, v3, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/h;

    iget v1, v1, Landroidx/constraintlayout/widget/h;->e:I

    :goto_8
    if-nez v0, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "NO Constraint set found ! id="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dim ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConstraintLayoutStates"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_d
    iput v2, p0, Landroidx/constraintlayout/widget/i;->c:I

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/q;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_e
    :goto_9
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
