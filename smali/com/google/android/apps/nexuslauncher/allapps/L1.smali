.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/L1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/u0;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

.field public final synthetic b:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Lcom/google/android/apps/nexuslauncher/allapps/O1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/L1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/L1;->b:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/L1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/L1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/icons/BitmapInfo;)V
    .locals 3

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->D:Lcom/google/android/apps/nexuslauncher/allapps/E1;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/L1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/L1;->b:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput-object p1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/L1;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object p1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/L1;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, v1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, p0}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(ILcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method
