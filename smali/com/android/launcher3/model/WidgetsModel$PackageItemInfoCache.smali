.class final Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mMap:Lq/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq/f;

    invoke-direct {v0}, Lq/f;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->mMap:Lq/f;

    return-void
.end method


# virtual methods
.method public final getOrCreate(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/model/data/PackageItemInfo;
    .locals 4

    iget-object p0, p0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->mMap:Lq/f;

    invoke-virtual {p0, p1}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    iget-object v3, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(ILandroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->mMap:Lq/f;

    invoke-virtual {p0}, Lq/f;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
