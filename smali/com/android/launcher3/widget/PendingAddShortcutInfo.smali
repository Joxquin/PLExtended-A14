.class public Lcom/android/launcher3/widget/PendingAddShortcutInfo;
.super Lcom/android/launcher3/PendingAddItemInfo;
.source "SourceFile"


# instance fields
.field protected mActivityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/launcher3/PendingAddItemInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/PendingAddItemInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mActivityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 3
    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 4
    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getItemType()V

    const/4 p1, 0x6

    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 p1, -0x69

    .line 6
    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/android/launcher3/PendingAddItemInfo;-><init>(Lcom/android/launcher3/PendingAddItemInfo;)V

    .line 8
    iget-object p1, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mActivityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mActivityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    return-void
.end method


# virtual methods
.method public getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mActivityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    return-object p0
.end method
