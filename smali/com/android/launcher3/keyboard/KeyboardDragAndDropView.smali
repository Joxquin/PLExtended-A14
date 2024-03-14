.class public Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# static fields
.field public static final synthetic d:I


# instance fields
.field private mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

.field private final mDelegates:Ljava/util/ArrayList;

.field private final mFocusIndicator:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;

.field private final mIntList:Ljava/util/ArrayList;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mNodes:Ljava/util/ArrayList;

.field private final mTempNodeInfo:LM/e;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mIntList:Ljava/util/ArrayList;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mDelegates:Ljava/util/ArrayList;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    .line 6
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect:Landroid/graphics/Rect;

    .line 7
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect2:Landroid/graphics/Rect;

    .line 8
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 9
    new-instance p3, LM/e;

    invoke-direct {p3, p2}, LM/e;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 10
    iput-object p3, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempNodeInfo:LM/e;

    .line 11
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 12
    new-instance p1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;

    invoke-direct {p1, p0}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mFocusIndicator:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;-><init>(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mIntList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mIntList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getVisibleVirtualViews(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mIntList:Ljava/util/ArrayList;

    new-instance v1, LN0/d;

    invoke-direct {v1, p0, p1}, LN0/d;-><init>(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setCurrentSelection(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;)V
    .locals 7

    iput-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    const v0, 0x7f0a01e6

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempNodeInfo:LM/e;

    iget-object v2, p1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    iget v3, p1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->id:I

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->onPopulateNodeForVirtualView(ILM/e;)V

    iget-object v1, v1, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempNodeInfo:LM/e;

    iget-object v1, v1, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p1, p1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getHost()Lcom/android/launcher3/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/PagedView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/launcher3/PagedView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v1, v3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const/4 v5, 0x2

    aput v2, v1, v5

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    const/4 v6, 0x3

    aput v2, v1, v6

    iget-object v2, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    invoke-static {p1, v2, v1, v4, v3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    new-instance p1, Landroid/graphics/RectF;

    aget v2, v1, v3

    aget v3, v1, v4

    aget v5, v1, v5

    aget v1, v1, v6

    invoke-direct {p1, v2, v3, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mFocusIndicator:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->changeFocus(Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public final dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 13

    iget-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getDragAndDropAccessibilityDelegate()Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getDragAndDropAccessibilityDelegate()Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mDelegates:Ljava/util/ArrayList;

    new-instance v0, LN0/a;

    invoke-direct {v0, p0}, LN0/a;-><init>(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v3, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    if-eqz v3, :cond_d

    if-gez p1, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq p2, v1, :cond_c

    const/4 v4, 0x2

    if-eq p2, v4, :cond_b

    const/16 p1, 0x11

    if-eq p2, p1, :cond_8

    const/16 p1, 0x21

    if-eq p2, p1, :cond_7

    const/16 p1, 0x42

    if-eq p2, p1, :cond_6

    const/16 p1, 0x82

    if-eq p2, p1, :cond_5

    goto/16 :goto_5

    :cond_5
    new-instance p1, LN0/b;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, LN0/b;-><init>(I)V

    new-instance v4, LN0/c;

    invoke-direct {v4, p2}, LN0/c;-><init>(I)V

    goto :goto_2

    :cond_6
    new-instance p1, LN0/b;

    invoke-direct {p1, v2}, LN0/b;-><init>(I)V

    new-instance v4, LN0/c;

    invoke-direct {v4, v2}, LN0/c;-><init>(I)V

    goto :goto_2

    :cond_7
    new-instance p1, LN0/b;

    invoke-direct {p1, v4}, LN0/b;-><init>(I)V

    new-instance p2, LN0/c;

    invoke-direct {p2, v4}, LN0/c;-><init>(I)V

    move-object v4, p2

    goto :goto_2

    :cond_8
    new-instance p1, LN0/b;

    invoke-direct {p1, v1}, LN0/b;-><init>(I)V

    new-instance v4, LN0/c;

    invoke-direct {v4, v1}, LN0/c;-><init>(I)V

    :goto_2
    iget-object p2, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    iget-object v5, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempNodeInfo:LM/e;

    iget-object v6, p2, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    iget p2, p2, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->id:I

    invoke-virtual {v6, p2, v5}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->onPopulateNodeForVirtualView(ILM/e;)V

    iget-object p2, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p2}, LM/e;->e(Landroid/graphics/Rect;)V

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    move v5, v2

    :goto_3
    if-ge v5, v3, :cond_d

    iget-object v6, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    iget-object v7, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempNodeInfo:LM/e;

    iget-object v8, v6, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    iget v9, v6, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->id:I

    invoke-virtual {v8, v9, v7}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->onPopulateNodeForVirtualView(ILM/e;)V

    iget-object v8, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, LM/e;->e(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v7, v8}, LN0/b;->applyAsInt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gtz v7, :cond_9

    goto :goto_4

    :cond_9
    iget-object v8, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, LN0/c;->applyAsInt(Ljava/lang/Object;)I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, LN0/c;->applyAsInt(Ljava/lang/Object;)I

    move-result v9

    sub-int/2addr v8, v9

    mul-int/2addr v7, v7

    int-to-long v9, v7

    mul-int/2addr v8, v8

    int-to-long v7, v8

    const-wide/16 v11, 0xd

    mul-long/2addr v7, v11

    add-long/2addr v7, v9

    long-to-float v7, v7

    cmpg-float v8, v7, p2

    if-gez v8, :cond_a

    move-object v0, v6

    move p2, v7

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    iget-object p2, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    add-int/2addr p1, v1

    rem-int/2addr p1, v3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    goto :goto_5

    :cond_c
    iget-object p2, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    add-int/2addr p1, v3

    sub-int/2addr p1, v1

    rem-int/2addr p1, v3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    :cond_d
    :goto_5
    if-nez v0, :cond_e

    return v2

    :cond_e
    invoke-direct {p0, v0}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->setCurrentSelection(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;)V

    return v1
.end method

.method public final handleClose(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    iget-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    return-void
.end method

.method public final isOfType(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mFocusIndicator:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    if-eqz v0, :cond_0

    iget p0, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->id:I

    const/16 p1, 0x10

    iget-object p2, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->onPerformActionForVirtualView(II)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->setCurrentSelection(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;)V

    :cond_0
    return-void
.end method

.method public final onStateTransitionStart(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/states/SpringLoadedState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/states/EditModeState;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_0
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public final showForIcon(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v2, v4

    aput v2, v3, v0

    invoke-static {p1, v1, v3, v5, v5}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    iget-object v2, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1, v2, p2, p3}, Lcom/android/launcher3/touch/ItemLongClickListener;->beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getDragAndDropAccessibilityDelegate()Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    aget p3, v3, v5

    aget v0, v3, v0

    invoke-virtual {p1, p3, v0}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getVirtualViewAt(FF)I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;-><init>(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;I)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->setCurrentSelection(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v5}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method
