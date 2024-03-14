.class public final Lcom/android/launcher3/appprediction/InstantAppItemInfo;
.super Lcom/android/launcher3/model/data/AppInfo;
.source "SourceFile"


# virtual methods
.method public final getTargetComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v0, 0xe

    iput v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    iget-object v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method
