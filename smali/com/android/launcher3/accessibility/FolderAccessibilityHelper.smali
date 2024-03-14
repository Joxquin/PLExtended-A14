.class public final Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;
.super Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
.source "SourceFile"


# instance fields
.field private final mParent:Lcom/android/launcher3/folder/FolderPagedView;

.field private final mStartPosition:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;-><init>(Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderPagedView;

    iput-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mParent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result p1

    mul-int/2addr p1, v1

    iput p1, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    return-void
.end method


# virtual methods
.method public final getConfirmationForIconDrop(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    const p1, 0x7f1300f8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLocationDescriptionForIconDrop(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x7f130132

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final intersectsValidDropTarget(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mParent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getAllocatedContentSize()I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
