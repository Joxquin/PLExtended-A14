.class public LY1/A;
.super Lcom/android/launcher3/model/data/AppInfo;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/ComponentKey;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    iget-object v0, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iput-boolean p2, p0, LY1/A;->d:Z

    return-void
.end method


# virtual methods
.method public final isDisabled()Z
    .locals 0

    iget-boolean p0, p0, LY1/A;->d:Z

    return p0
.end method
