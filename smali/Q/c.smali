.class public abstract LQ/c;
.super Landroidx/core/view/b;
.source "SourceFile"


# static fields
.field private static final INVALID_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:LQ/a;

.field private static final SPARSE_VALUES_ADAPTER:LQ/a;


# instance fields
.field mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:LQ/b;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, LQ/c;->INVALID_BOUNDS:Landroid/graphics/Rect;

    new-instance v0, LQ/a;

    invoke-direct {v0}, LQ/a;-><init>()V

    sput-object v0, LQ/c;->NODE_ADAPTER:LQ/a;

    new-instance v0, LQ/a;

    invoke-direct {v0}, LQ/a;-><init>()V

    sput-object v0, LQ/c;->SPARSE_VALUES_ADAPTER:LQ/a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroidx/core/view/b;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LQ/c;->mTempScreenRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LQ/c;->mTempParentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LQ/c;->mTempVisibleRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, LQ/c;->mTempGlobalRect:[I

    const/high16 v0, -0x80000000

    iput v0, p0, LQ/c;->mAccessibilityFocusedVirtualViewId:I

    iput v0, p0, LQ/c;->mKeyboardFocusedVirtualViewId:I

    iput v0, p0, LQ/c;->mHoveredVirtualViewId:I

    if-eqz p1, :cond_1

    iput-object p1, p0, LQ/c;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, LQ/c;->mManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/x;->b(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Landroidx/core/view/x;->o(Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "View may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createNodeForChild(I)LM/e;
    .locals 14

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, LM/e;

    invoke-direct {v1, v0}, LM/e;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    const-string v3, "android.view.View"

    invoke-virtual {v1, v3}, LM/e;->h(Ljava/lang/CharSequence;)V

    sget-object v3, LQ/c;->INVALID_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, LM/e;->g(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    const/4 v4, -0x1

    iput v4, v1, LM/e;->b:I

    iget-object v5, p0, LQ/c;->mHost:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {p0, p1, v1}, LQ/c;->onPopulateNodeForVirtualView(ILM/e;)V

    invoke-virtual {v1}, LM/e;->f()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v6, p0, LQ/c;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v7, p0, LQ/c;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, LM/e;->e(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must set parent bounds or screen bounds in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v8

    and-int/lit8 v9, v8, 0x40

    if-nez v9, :cond_11

    const/16 v9, 0x80

    and-int/2addr v8, v9

    if-nez v8, :cond_10

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iput p1, v1, LM/e;->c:I

    invoke-virtual {v0, v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v8, p0, LQ/c;->mAccessibilityFocusedVirtualViewId:I

    const/4 v10, 0x0

    if-ne v8, p1, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    invoke-virtual {v1, v9}, LM/e;->a(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v8, 0x40

    invoke-virtual {v1, v8}, LM/e;->a(I)V

    :goto_2
    iget v8, p0, LQ/c;->mKeyboardFocusedVirtualViewId:I

    if-ne v8, p1, :cond_5

    move p1, v2

    goto :goto_3

    :cond_5
    move p1, v10

    :goto_3
    if-eqz p1, :cond_6

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, LM/e;->a(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v1, v2}, LM/e;->a(I)V

    :cond_7
    :goto_4
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    iget-object p1, p0, LQ/c;->mTempGlobalRect:[I

    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v1, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v8, :cond_9

    invoke-virtual {v1, v6}, LM/e;->g(Landroid/graphics/Rect;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v6, v1, LM/e;->b:I

    if-eq v6, v4, :cond_8

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    new-instance v11, LM/e;

    invoke-direct {v11, v6}, LM/e;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget v12, v1, LM/e;->b:I

    :goto_5
    if-eq v12, v4, :cond_8

    iput v4, v11, LM/e;->b:I

    iget-object v13, v11, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v13, v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    invoke-virtual {v11, v3}, LM/e;->g(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v12, v11}, LQ/c;->onPopulateNodeForVirtualView(ILM/e;)V

    invoke-virtual {v13, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget v12, v6, Landroid/graphics/Rect;->left:I

    iget v13, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    iget v12, v11, LM/e;->b:I

    goto :goto_5

    :cond_8
    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, p1, v10

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    aget v4, p1, v2

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v9, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v7}, LM/e;->e(Landroid/graphics/Rect;)V

    :cond_9
    iget-object p0, p0, LQ/c;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_f

    aget v3, p1, v10

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    aget p1, p1, v2

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0, v3, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v7, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {v9, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getWindowVisibility()I

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_6
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_d

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v3, 0x0

    cmpg-float p1, p1, v3

    if-lez p1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_6

    :cond_d
    if-eqz p0, :cond_e

    move v10, v2

    :cond_e
    :goto_7
    if-eqz v10, :cond_f

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_f
    return-object v1

    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, LQ/c;->getVisibleVirtualViews(Ljava/util/List;)V

    new-instance v4, Lq/n;

    invoke-direct {v4}, Lq/n;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v0, v7}, LQ/c;->createNodeForChild(I)LM/e;

    move-result-object v7

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v8, v7}, Lq/n;->d(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget v3, v0, LQ/c;->mKeyboardFocusedVirtualViewId:I

    const/high16 v7, -0x80000000

    if-ne v3, v7, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v3}, Lq/n;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM/e;

    :goto_1
    const/4 v9, 0x1

    sget-object v10, LQ/c;->NODE_ADAPTER:LQ/a;

    sget-object v11, LQ/c;->SPARSE_VALUES_ADAPTER:LQ/a;

    iget-object v12, v0, LQ/c;->mHost:Landroid/view/View;

    const/4 v13, 0x2

    if-eq v1, v9, :cond_16

    if-eq v1, v13, :cond_16

    const/16 v13, 0x82

    const/16 v14, 0x42

    const/16 v15, 0x21

    const/16 v6, 0x11

    if-eq v1, v6, :cond_3

    if-eq v1, v15, :cond_3

    if-eq v1, v14, :cond_3

    if-ne v1, v13, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iget v5, v0, LQ/c;->mKeyboardFocusedVirtualViewId:I

    const-string v8, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    if-eq v5, v7, :cond_4

    invoke-virtual {v0, v5}, LQ/c;->obtainAccessibilityNodeInfo(I)LM/e;

    move-result-object v2

    invoke-virtual {v2, v9}, LM/e;->e(Landroid/graphics/Rect;)V

    :goto_3
    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v5

    if-eq v1, v6, :cond_9

    if-eq v1, v15, :cond_8

    if-eq v1, v14, :cond_7

    if-ne v1, v13, :cond_6

    const/4 v5, 0x0

    const/4 v12, -0x1

    invoke-virtual {v9, v5, v12, v2, v12}, Landroid/graphics/Rect;->set(IIII)V

    move v12, v5

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v2, 0x0

    const/4 v12, -0x1

    invoke-virtual {v9, v12, v2, v12, v5}, Landroid/graphics/Rect;->set(IIII)V

    move v12, v2

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v9, v12, v5, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v9, v2, v12, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eq v1, v6, :cond_d

    if-eq v1, v15, :cond_c

    if-eq v1, v14, :cond_b

    if-ne v1, v13, :cond_a

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    neg-int v5, v5

    invoke-virtual {v2, v12, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v6, 0x1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v6

    neg-int v5, v5

    invoke-virtual {v2, v5, v12}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    :cond_c
    const/4 v6, 0x1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v2, v12, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    :cond_d
    const/4 v6, 0x1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v2, v5, v12}, Landroid/graphics/Rect;->offset(II)V

    :goto_5
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v4, Lq/n;->f:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move v8, v12

    const/16 v16, 0x0

    :goto_6
    if-ge v8, v5, :cond_15

    iget-object v11, v4, Lq/n;->e:[Ljava/lang/Object;

    aget-object v11, v11, v8

    check-cast v11, LM/e;

    if-ne v11, v3, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v6}, LM/e;->e(Landroid/graphics/Rect;)V

    invoke-static {v1, v9, v6}, LQ/e;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_f

    goto :goto_8

    :cond_f
    invoke-static {v1, v9, v2}, LQ/e;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_10

    goto :goto_7

    :cond_10
    invoke-static {v1, v9, v6, v2}, LQ/e;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {v1, v9, v2, v6}, LQ/e;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_12

    goto :goto_8

    :cond_12
    invoke-static {v1, v9, v6}, LQ/e;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v13

    invoke-static {v1, v9, v6}, LQ/e;->e(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v14

    mul-int/lit8 v15, v13, 0xd

    mul-int/2addr v15, v13

    mul-int/2addr v14, v14

    add-int/2addr v14, v15

    invoke-static {v1, v9, v2}, LQ/e;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v13

    invoke-static {v1, v9, v2}, LQ/e;->e(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v15

    mul-int/lit8 v17, v13, 0xd

    mul-int v17, v17, v13

    mul-int/2addr v15, v15

    add-int v15, v15, v17

    if-ge v14, v15, :cond_13

    :goto_7
    const/4 v13, 0x1

    goto :goto_9

    :cond_13
    :goto_8
    move v13, v12

    :goto_9
    if-eqz v13, :cond_14

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v16, v11

    :cond_14
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_15
    move v2, v12

    move-object/from16 v1, v16

    const/4 v3, -0x1

    goto/16 :goto_11

    :cond_16
    const/4 v2, 0x0

    sget-object v5, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v12}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    const/4 v5, 0x1

    goto :goto_b

    :cond_17
    move v5, v2

    :goto_b
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v4, Lq/n;->f:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v2

    :goto_c
    if-ge v9, v6, :cond_18

    iget-object v11, v4, Lq/n;->e:[Ljava/lang/Object;

    aget-object v11, v11, v9

    check-cast v11, LM/e;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_18
    new-instance v6, LQ/d;

    invoke-direct {v6, v5, v10}, LQ/d;-><init>(ZLQ/a;)V

    invoke-static {v8, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1c

    if-ne v1, v13, :cond_1b

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v3, :cond_19

    const/4 v12, -0x1

    goto :goto_d

    :cond_19
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v12

    :goto_d
    add-int/2addr v12, v5

    if-ge v12, v1, :cond_1a

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    goto :goto_e

    :cond_1a
    const/4 v6, 0x0

    :goto_e
    const/4 v3, -0x1

    goto :goto_10

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v3, :cond_1d

    goto :goto_f

    :cond_1d
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_f
    const/4 v3, -0x1

    add-int/2addr v1, v3

    if-ltz v1, :cond_1e

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_10

    :cond_1e
    const/4 v6, 0x0

    :goto_10
    move-object/from16 v16, v6

    check-cast v16, LM/e;

    move-object/from16 v1, v16

    :goto_11
    if-nez v1, :cond_1f

    goto :goto_14

    :cond_1f
    iget v5, v4, Lq/n;->f:I

    :goto_12
    if-ge v2, v5, :cond_21

    iget-object v6, v4, Lq/n;->e:[Ljava/lang/Object;

    aget-object v6, v6, v2

    if-ne v6, v1, :cond_20

    move v8, v2

    goto :goto_13

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_21
    move v8, v3

    :goto_13
    iget-object v1, v4, Lq/n;->d:[I

    aget v7, v1, v8

    :goto_14
    invoke-virtual {v0, v7}, LQ/c;->requestKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 2

    iget v0, p0, LQ/c;->mKeyboardFocusedVirtualViewId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, LQ/c;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, p1, v1}, LQ/c;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, LQ/c;->sendEventForVirtualView(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, LQ/c;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x100

    const/16 v3, 0x80

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/high16 v6, -0x80000000

    if-eq v0, v4, :cond_4

    const/16 v4, 0x9

    if-eq v0, v4, :cond_4

    const/16 p1, 0xa

    if-eq v0, p1, :cond_1

    return v2

    :cond_1
    iget p1, p0, LQ/c;->mHoveredVirtualViewId:I

    if-eq p1, v6, :cond_3

    if-ne p1, v6, :cond_2

    goto :goto_0

    :cond_2
    iput v6, p0, LQ/c;->mHoveredVirtualViewId:I

    invoke-virtual {p0, v6, v3}, LQ/c;->sendEventForVirtualView(II)V

    invoke-virtual {p0, p1, v1}, LQ/c;->sendEventForVirtualView(II)V

    :goto_0
    return v5

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, LQ/c;->getVirtualViewAt(FF)I

    move-result p1

    iget v0, p0, LQ/c;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_5

    goto :goto_1

    :cond_5
    iput p1, p0, LQ/c;->mHoveredVirtualViewId:I

    invoke-virtual {p0, p1, v3}, LQ/c;->sendEventForVirtualView(II)V

    invoke-virtual {p0, v0, v1}, LQ/c;->sendEventForVirtualView(II)V

    :goto_1
    if-eq p1, v6, :cond_6

    move v2, v5

    :cond_6
    :goto_2
    return v2
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3d

    const/4 v4, 0x0

    if-eq v0, v3, :cond_6

    const/16 v3, 0x42

    if-eq v0, v3, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x13

    if-eq v0, v5, :cond_1

    const/16 v5, 0x15

    if-eq v0, v5, :cond_0

    const/16 v5, 0x16

    if-eq v0, v5, :cond_2

    const/16 v3, 0x82

    goto :goto_0

    :cond_0
    const/16 v3, 0x11

    goto :goto_0

    :cond_1
    const/16 v3, 0x21

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    add-int/2addr p1, v2

    move v0, v1

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-direct {p0, v3, v4}, LQ/c;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2

    :cond_4
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    iget p1, p0, LQ/c;->mKeyboardFocusedVirtualViewId:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_5

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, LQ/c;->onPerformActionForVirtualView(II)Z

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x2

    invoke-direct {p0, p1, v4}, LQ/c;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0, v2, v4}, LQ/c;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    :cond_8
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)LM/i;
    .locals 0

    iget-object p1, p0, LQ/c;->mNodeProvider:LQ/b;

    if-nez p1, :cond_0

    new-instance p1, LQ/b;

    invoke-direct {p1, p0}, LQ/b;-><init>(LQ/c;)V

    iput-object p1, p0, LQ/c;->mNodeProvider:LQ/b;

    :cond_0
    iget-object p0, p0, LQ/c;->mNodeProvider:LQ/b;

    return-object p0
.end method

.method public final getFocusedVirtualView()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, LQ/c;->mAccessibilityFocusedVirtualViewId:I

    return p0
.end method

.method public abstract getVirtualViewAt(FF)I
.end method

.method public abstract getVisibleVirtualViews(Ljava/util/List;)V
.end method

.method public final obtainAccessibilityNodeInfo(I)LM/e;
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, LQ/c;->mHost:Landroid/view/View;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, LM/e;

    invoke-direct {v1, v0}, LM/e;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2}, LQ/c;->getVisibleVirtualViews(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Views cannot have both real and virtual children"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v1, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    invoke-direct {p0, p1}, LQ/c;->createNodeForChild(I)LM/e;

    move-result-object p0

    return-object p0
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    iget v0, p0, LQ/c;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, LQ/c;->clearKeyboardFocusForVirtualView(I)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p2, p3}, LQ/c;->moveFocus(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V

    invoke-virtual {p0, p2}, LQ/c;->onPopulateNodeForHost(LM/e;)V

    return-void
.end method

.method public abstract onPerformActionForVirtualView(II)Z
.end method

.method public onPopulateEventForVirtualView(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    return-void
.end method

.method public onPopulateNodeForHost(LM/e;)V
    .locals 0

    return-void
.end method

.method public abstract onPopulateNodeForVirtualView(ILM/e;)V
.end method

.method public onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 5

    const/4 v0, -0x1

    iget-object v1, p0, LQ/c;->mHost:Landroid/view/View;

    if-eq p1, v0, :cond_7

    const/4 p3, 0x1

    if-eq p2, p3, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/16 v0, 0x40

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    if-eq p2, v0, :cond_2

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, LQ/c;->onPerformActionForVirtualView(II)Z

    move-result p0

    goto :goto_2

    :cond_0
    iget p2, p0, LQ/c;->mAccessibilityFocusedVirtualViewId:I

    if-ne p2, p1, :cond_1

    iput v4, p0, LQ/c;->mAccessibilityFocusedVirtualViewId:I

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, p1, v2}, LQ/c;->sendEventForVirtualView(II)V

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v3

    :goto_1
    move p0, p3

    goto :goto_2

    :cond_2
    iget-object p2, p0, LQ/c;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    iget p2, p0, LQ/c;->mAccessibilityFocusedVirtualViewId:I

    if-eq p2, p1, :cond_1

    if-eq p2, v4, :cond_4

    iput v4, p0, LQ/c;->mAccessibilityFocusedVirtualViewId:I

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, p2, v2}, LQ/c;->sendEventForVirtualView(II)V

    :cond_4
    iput p1, p0, LQ/c;->mAccessibilityFocusedVirtualViewId:I

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    const p2, 0x8000

    invoke-virtual {p0, p1, p2}, LQ/c;->sendEventForVirtualView(II)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, LQ/c;->clearKeyboardFocusForVirtualView(I)Z

    move-result p0

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, LQ/c;->requestKeyboardFocusForVirtualView(I)Z

    move-result p0

    :goto_2
    return p0

    :cond_7
    sget-object p0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, p2, p3}, Landroidx/core/view/x;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 3

    iget-object v0, p0, LQ/c;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, LQ/c;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_1

    return v2

    :cond_1
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, LQ/c;->clearKeyboardFocusForVirtualView(I)Z

    :cond_2
    if-ne p1, v1, :cond_3

    return v2

    :cond_3
    iput p1, p0, LQ/c;->mKeyboardFocusedVirtualViewId:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LQ/c;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, LQ/c;->sendEventForVirtualView(II)V

    return v0
.end method

.method public final sendEventForVirtualView(II)V
    .locals 5

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_5

    iget-object v0, p0, LQ/c;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, LQ/c;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {p0, p1}, LQ/c;->obtainAccessibilityNodeInfo(I)LM/e;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, LM/e;->f()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    invoke-virtual {p0, p2, p1}, LQ/c;->onPopulateEventForVirtualView(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_1
    invoke-interface {v1, v0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_5
    :goto_2
    return-void
.end method
