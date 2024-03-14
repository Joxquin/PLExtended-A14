.class public final Lcom/android/launcher3/util/ContentWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCommitParams:Lcom/android/launcher3/util/ContentWriter$CommitParams;

.field private final mContext:Landroid/content/Context;

.field private mIcon:Lcom/android/launcher3/icons/BitmapInfo;

.field private mUser:Landroid/os/UserHandle;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;Landroid/content/Context;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    .line 6
    iput-object p2, p0, Lcom/android/launcher3/util/ContentWriter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/ContentValues;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/android/launcher3/util/ContentWriter;->mCommitParams:Lcom/android/launcher3/util/ContentWriter$CommitParams;

    return-void
.end method


# virtual methods
.method public final commit()I
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/util/ContentWriter;->mCommitParams:Lcom/android/launcher3/util/ContentWriter$CommitParams;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mDbController:Lcom/android/launcher3/model/ModelDbController;

    iget-object v1, p0, Lcom/android/launcher3/util/ContentWriter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/util/ContentWriter;->mCommitParams:Lcom/android/launcher3/util/ContentWriter$CommitParams;

    iget-object v2, p0, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mWhere:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mSelectionArgs:[Ljava/lang/String;

    const-string v3, "favorites"

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/android/launcher3/model/ModelDbController;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getValues(Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/util/ContentWriter;->mIcon:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/util/ContentWriter;->mIcon:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, p0, Lcom/android/launcher3/util/ContentWriter;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/util/ContentWriter;->mIcon:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/android/launcher3/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    const-string v0, "icon"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/util/ContentWriter;->mIcon:Lcom/android/launcher3/icons/BitmapInfo;

    :cond_0
    return-object v1
.end method

.method public final put(Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    const-string v0, "intent"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final put(Landroid/os/UserHandle;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/util/ContentWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 6
    iget-object p0, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    const-string v0, "profileId"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public final put(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/ContentWriter;->mIcon:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object p2, p0, Lcom/android/launcher3/util/ContentWriter;->mUser:Landroid/os/UserHandle;

    return-void
.end method
