.class public final synthetic Lcom/android/launcher3/accessibility/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field public final synthetic e:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic f:I

.field public final synthetic g:[I

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/accessibility/a;->d:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/launcher3/accessibility/a;->e:Lcom/android/launcher3/model/data/ItemInfo;

    iput p3, p0, Lcom/android/launcher3/accessibility/a;->f:I

    iput-object p4, p0, Lcom/android/launcher3/accessibility/a;->g:[I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/accessibility/a;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/accessibility/a;->d:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/a;->e:Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, p0, Lcom/android/launcher3/accessibility/a;->f:I

    iget-object v6, p0, Lcom/android/launcher3/accessibility/a;->g:[I

    iget-boolean p0, p0, Lcom/android/launcher3/accessibility/a;->h:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    const/4 v3, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    iget-object v2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    const/16 v4, -0x64

    aget v7, v6, v3

    aget v9, v6, v8

    move-object v3, v1

    move v6, v7

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object v2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1, v8, p0}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V

    const p0, 0x7f1300f7

    invoke-virtual {v0, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    goto/16 :goto_0

    :cond_0
    instance-of v2, v1, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v2, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/PendingAddItemInfo;

    iget-object p0, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    iget-object p0, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/Launcher;

    const/16 v4, -0x64

    iget v7, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v9, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    iget-object v1, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    const/16 v4, -0x64

    aget v1, v6, v3

    aget v7, v6, v8

    move-object v3, v9

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object v0, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v8, p0}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    const/16 v4, -0x64

    aget v7, v6, v3

    aget v9, v6, v8

    move-object v3, v1

    move v6, v7

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object v2, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/accessibility/b;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/accessibility/b;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v8, p0}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V

    :cond_3
    :goto_0
    return-void
.end method
