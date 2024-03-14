.class public final synthetic Lcom/android/launcher3/accessibility/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

.field public final synthetic e:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field public final synthetic f:I

.field public final synthetic g:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/accessibility/d;->d:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/launcher3/accessibility/d;->e:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput p3, p0, Lcom/android/launcher3/accessibility/d;->f:I

    iput-object p4, p0, Lcom/android/launcher3/accessibility/d;->g:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/accessibility/d;->d:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v7, p0, Lcom/android/launcher3/accessibility/d;->e:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v4, p0, Lcom/android/launcher3/accessibility/d;->f:I

    iget-object p0, p0, Lcom/android/launcher3/accessibility/d;->g:[I

    iget-object v1, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    const/16 v3, -0x64

    const/4 v8, 0x0

    aget v5, p0, v8

    const/4 v9, 0x1

    aget v6, p0, v9

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object p0, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v9, v8}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V

    iget-object p0, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    const p0, 0x7f1300f7

    invoke-virtual {v0, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    return-void
.end method
