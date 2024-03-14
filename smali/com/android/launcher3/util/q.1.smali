.class public final synthetic Lcom/android/launcher3/util/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/util/q;->a:I

    iput-object p1, p0, Lcom/android/launcher3/util/q;->b:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 5

    iget v0, p0, Lcom/android/launcher3/util/q;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/launcher3/util/q;->b:Ljava/util/HashSet;

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v0, :cond_0

    move-object v4, p0

    check-cast v4, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    invoke-virtual {v4}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->hasNotCompleted()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v4, 0x3

    invoke-virtual {p2, v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v4

    if-eq v4, v2, :cond_1

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    :cond_1
    invoke-virtual {p1, p2, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    goto :goto_1

    :cond_2
    instance-of p2, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p2, :cond_3

    instance-of p2, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/launcher3/util/r;

    invoke-direct {p2, p0, v3}, Lcom/android/launcher3/util/r;-><init>(Ljava/util/HashSet;I)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Lcom/android/launcher3/util/r;)V

    :cond_3
    :goto_1
    return v3

    :goto_2
    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/BubbleTextView;->applyLoadingState(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    goto :goto_3

    :cond_4
    instance-of v0, p1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    goto :goto_3

    :cond_5
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_6

    instance-of p2, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/launcher3/util/r;

    invoke-direct {p2, p0, v2}, Lcom/android/launcher3/util/r;-><init>(Ljava/util/HashSet;I)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Lcom/android/launcher3/util/r;)V

    :cond_6
    :goto_3
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
